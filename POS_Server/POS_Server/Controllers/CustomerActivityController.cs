using LinqKit;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using POS_Server.Models;
using POS_Server.Models.VM;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Claims;
using System.Text;
using System.Web;
using System.Web.Http;

namespace POS_Server.Controllers
{
    [RoutePrefix("api/CustomerActivity")]
    public class CustomerActivityController : ApiController
    {
        CountriesController cc = new CountriesController();
        public List<CustomerActivityModel> GetCustomersActivities( string textSearch = "")
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<CUS_CUSTOMER_ACTIVITY>();
                searchPredicate = searchPredicate.And(x => x.IsActive == true);
                searchPredicate = searchPredicate.And(x => x.CUS_ACTIVITY.IsBlocked == false);
                searchPredicate = searchPredicate.And(x => x.GEN_CUSTOMER.CustomerStatus.Trim() == "continouse");

                if (textSearch != "")
                {
                    textSearch = textSearch.ToLower();
                   
                    searchPredicate = searchPredicate.And(s => s.GEN_CUSTOMER.BoxNumber.ToString().Contains(textSearch) ||
                    s.GEN_CUSTOMER.Name.ToLower().Contains(textSearch) 
                      || s.CustomerId.ToString().Contains(textSearch)
                     );

                }

                var nowDate = cc.AddOffsetTodate(DateTime.Now);
                var customers = entity.CUS_CUSTOMER_ACTIVITY.Where(searchPredicate)
                            .Select(x => new CustomerActivityModel()
                            {
                                RequestId = x.RequestId,
                                CustomerId = x.CustomerId,
                                BoxNumber = x.GEN_CUSTOMER.BoxNumber,
                                CustomerName = x.GEN_CUSTOMER.Name,
                                CivilNum = x.GEN_CUSTOMER.CivilNum,
                                CustomerStatus = x.GEN_CUSTOMER.CustomerStatus,
                                ActivityName = x.CUS_ACTIVITY.Description,
                                BasicValue = x.CUS_ACTIVITY.BasicValue,
                                Count = x.Count,
                                EndDate = x.CUS_ACTIVITY.EndDate,
                                ActivityId = x.ActivityId,
                                MaximumBenefit = x.CUS_ACTIVITY.MaximumBenefit,
                                RegistrationDate = x.CreateDate,
                                StartDate = x.CUS_ACTIVITY.StartDate,
                                ValueAfterDiscount = x.CUS_ACTIVITY.ValueAfterDiscount,
                                
                                IsActive = x.IsActive,
                                Notes = x.Notes,                             
                                CreateUserId = x.CreateUserId,
                                CreateDate = x.CreateDate,
                                UpdateDate = x.UpdateDate,
                                UpdateUserId = x.UpdateUserId,
                               
                            }).ToList();

                bool hasFamilyCard = false;
                DateTime zeroTime = new DateTime(1, 1, 1);
                foreach (var cus in customers)
                {
                    hasFamilyCard = false;

                    #region FamilyCardHolder
                    var card = entity.CUS_FAMILY_CARD.Where(x => x.CustomerId == cus.CustomerId && x.IsStopped == false).FirstOrDefault();
                    if (card != null)
                        hasFamilyCard = true;
                    cus.FamilyCardHolder = hasFamilyCard;
                    #endregion

                   
                }
                return customers;
            }
        }

        [HttpPost]
        [Route("SearchActivities")]
        public string SearchActivities(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            string textSearch = "";

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "textSearch")
                    {
                        textSearch = c.Value;
                    }
                }

                using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                {
                    var searchPredicate = PredicateBuilder.New<CUS_CUSTOMER_ACTIVITY>();
                    searchPredicate = searchPredicate.And(x => x.IsActive == true);
                    searchPredicate = searchPredicate.And(x => x.CUS_ACTIVITY.IsBlocked == false);
                    searchPredicate = searchPredicate.And(x => x.GEN_CUSTOMER.CustomerStatus.Trim() == "continouse");

                    if (textSearch != "")
                    {
                        textSearch = textSearch.ToLower();

                        searchPredicate = searchPredicate.And(s => s.GEN_CUSTOMER.BoxNumber.ToString().Contains(textSearch) ||
                        s.GEN_CUSTOMER.Name.ToLower().Contains(textSearch)
                          || s.CustomerId.ToString().Contains(textSearch)
                         );

                    }

                    var nowDate = cc.AddOffsetTodate(DateTime.Now);
                    var customers = entity.CUS_CUSTOMER_ACTIVITY.Where(searchPredicate)
                                .Select(x => new CustomerActivityModel()
                                {
                                    RequestId = x.RequestId,
                                    CustomerId = x.CustomerId,
                                    BoxNumber = x.GEN_CUSTOMER.BoxNumber,
                                    CustomerName = x.GEN_CUSTOMER.Name,
                                    CivilNum = x.GEN_CUSTOMER.CivilNum,
                                    CustomerStatus = x.GEN_CUSTOMER.CustomerStatus,
                                    ActivityName = x.CUS_ACTIVITY.Description,
                                    BasicValue = x.CUS_ACTIVITY.BasicValue,
                                    Count = x.Count,
                                    EndDate = x.CUS_ACTIVITY.EndDate,
                                    ActivityId = x.ActivityId,
                                    MaximumBenefit = x.CUS_ACTIVITY.MaximumBenefit,
                                    RegistrationDate = x.CreateDate,
                                    StartDate = x.CUS_ACTIVITY.StartDate,
                                    ValueAfterDiscount = x.CUS_ACTIVITY.ValueAfterDiscount,

                                    IsActive = x.IsActive,
                                    Notes = x.Notes,
                                    CreateUserId = x.CreateUserId,
                                    CreateDate = x.CreateDate,
                                    UpdateDate = x.UpdateDate,
                                    UpdateUserId = x.UpdateUserId,

                                }).ToList();

                    bool hasFamilyCard = false;
                    DateTime zeroTime = new DateTime(1, 1, 1);
                    foreach (var cus in customers)
                    {
                        hasFamilyCard = false;

                        #region FamilyCardHolder
                        var card = entity.CUS_FAMILY_CARD.Where(x => x.CustomerId == cus.CustomerId && x.IsStopped == false).FirstOrDefault();
                        if (card != null)
                            hasFamilyCard = true;
                        cus.FamilyCardHolder = hasFamilyCard;
                        #endregion


                    }
                    return TokenManager.GenerateToken(customers); 
                }
                
            }
        }

        [HttpPost]
        [Route("GetActivitiesReport")]
        public string GetActivitiesReport(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            long boxNumberFrom = 0;
            long boxNumberTo = 0;
            long customerIdFrom = 0;
            long customerIdTo = 0;
            string customerName = "";
            long activityId = 0;
            DateTime? activityStartDateFrom =null;
            DateTime? activityStartDateTo = null;
            DateTime? activityEndDateFrom = null;
            DateTime? activityEndDateTo = null;
            DateTime? joinDateFrom = null;
            DateTime? joinDateTo = null;

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "boxNumberFrom")
                    {
                        boxNumberFrom = long.Parse( c.Value);
                    }
                    else if (c.Type == "boxNumberTo")
                    {
                        boxNumberTo = long.Parse( c.Value);
                    }
                    else if (c.Type == "customerIdFrom")
                    {
                        customerIdFrom = long.Parse( c.Value);
                    }
                    else if (c.Type == "customerIdTo")
                    {
                        customerIdTo = long.Parse( c.Value);
                    }
                    else if (c.Type == "customerName")
                    {
                        customerName =  c.Value;
                    }
                    else if (c.Type == "activityId")
                    {
                        activityId = long.Parse(c.Value);
                    } 
                    else if (c.Type == "activityStartDateFrom")
                    {
                        if(c.Value != null && c.Value != "")
                            activityStartDateFrom = DateTime.Parse(c.Value);
                    }
                    else if (c.Type == "activityStartDateTo")
                    {
                        if(c.Value != null && c.Value != "")
                            activityStartDateTo = DateTime.Parse(c.Value);
                    } 
                    else if (c.Type == "activityEndDateFrom")
                    {
                        if(c.Value != null && c.Value != "")
                            activityEndDateFrom = DateTime.Parse(c.Value);
                    }
                    else if (c.Type == "activityEndDateTo")
                    {
                        if(c.Value != null && c.Value != "")
                            activityEndDateTo = DateTime.Parse(c.Value);
                    }
                    else if (c.Type == "joinDateFrom")
                    {
                        if(c.Value != null && c.Value != "")
                            joinDateFrom = DateTime.Parse(c.Value);
                    } 
                    else if (c.Type == "joinDateTo")
                    {
                        if(c.Value != null && c.Value != "")
                            joinDateTo = DateTime.Parse(c.Value);
                    }
                }

                using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                {
                    var searchPredicate = PredicateBuilder.New<CUS_CUSTOMER_ACTIVITY>();
                    searchPredicate = searchPredicate.And(x => x.IsActive == true);
                    searchPredicate = searchPredicate.And(x => x.CUS_ACTIVITY.IsBlocked == false);
                    searchPredicate = searchPredicate.And(x => x.GEN_CUSTOMER.CustomerStatus.Trim() == "continouse");

                    if (boxNumberFrom != 0)
                        searchPredicate = searchPredicate.And(x => x.GEN_CUSTOMER.BoxNumber >= boxNumberFrom);
                    if(boxNumberTo != 0)
                        searchPredicate = searchPredicate.And(x => x.GEN_CUSTOMER.BoxNumber <= boxNumberTo);
                    if (customerIdFrom != 0)
                        searchPredicate = searchPredicate.And(x => x.CustomerId >= customerIdFrom);
                    if (customerIdTo != 0)
                        searchPredicate = searchPredicate.And(x => x.CustomerId <= customerIdTo);
                    if(customerName != "")
                        searchPredicate = searchPredicate.And(x => x.GEN_CUSTOMER.Name.Contains(customerName));
                    if (activityId != 0)
                        searchPredicate = searchPredicate.And(x => x.ActivityId == activityId);
                    if (activityStartDateFrom != null)
                    {
                        activityStartDateFrom = DateTime.Parse(activityStartDateFrom.ToString().Split(' ')[0]);
                        searchPredicate = searchPredicate.And(x => x.CUS_ACTIVITY.StartDate >= activityStartDateFrom);
                    }
                     if (activityStartDateTo != null)
                    {
                        activityStartDateTo = DateTime.Parse(activityStartDateTo.ToString().Split(' ')[0]);
                        searchPredicate = searchPredicate.And(x => x.CUS_ACTIVITY.StartDate <= activityStartDateTo);
                    }
                    if (activityEndDateFrom != null)
                    {
                        activityEndDateFrom = DateTime.Parse(activityEndDateFrom.ToString().Split(' ')[0]);
                        searchPredicate = searchPredicate.And(x => x.CUS_ACTIVITY.EndDate >= activityEndDateFrom);
                    }
                     if (activityEndDateTo != null)
                    {
                        activityEndDateTo = DateTime.Parse(activityEndDateTo.ToString().Split(' ')[0]);
                        searchPredicate = searchPredicate.And(x => x.CUS_ACTIVITY.EndDate <= activityEndDateTo);
                    } 
                    if (joinDateFrom != null)
                    {
                        joinDateFrom = DateTime.Parse(joinDateFrom.ToString().Split(' ')[0]);
                        searchPredicate = searchPredicate.And(x => x.GEN_CUSTOMER.JoinDate >= joinDateFrom);
                    }
                     if (joinDateTo != null)
                    {
                        joinDateTo = DateTime.Parse(joinDateTo.ToString().Split(' ')[0]);
                        searchPredicate = searchPredicate.And(x => x.GEN_CUSTOMER.JoinDate <= joinDateTo);
                    }
                   
                    var activities = entity.CUS_CUSTOMER_ACTIVITY.Where(searchPredicate)
                                .Select(x => new CustomerActivityModel()
                                {
                                    RequestId = x.RequestId,
                                    CustomerId = x.CustomerId,
                                    BoxNumber = x.GEN_CUSTOMER.BoxNumber,
                                    CustomerName = x.GEN_CUSTOMER.Name,
                                    CivilNum = x.GEN_CUSTOMER.CivilNum,
                                    CustomerStatus = x.GEN_CUSTOMER.CustomerStatus,
                                    ActivityName = x.CUS_ACTIVITY.Description,
                                    BasicValue = x.CUS_ACTIVITY.BasicValue,
                                    Count = x.Count,
                                    EndDate = x.CUS_ACTIVITY.EndDate,
                                    ActivityId = x.ActivityId,
                                    MaximumBenefit = x.CUS_ACTIVITY.MaximumBenefit,
                                    RegistrationDate = x.CreateDate,
                                    StartDate = x.CUS_ACTIVITY.StartDate,
                                    ValueAfterDiscount = x.CUS_ACTIVITY.ValueAfterDiscount,

                                    IsActive = x.IsActive,
                                    Notes = x.Notes,
                                    CreateUserId = x.CreateUserId,
                                    CreateDate = x.CreateDate,
                                    UpdateDate = x.UpdateDate,
                                    UpdateUserId = x.UpdateUserId,

                                }).ToList();

                    bool hasFamilyCard = false;
                    DateTime zeroTime = new DateTime(1, 1, 1);
                    foreach (var cus in activities)
                    {
                        hasFamilyCard = false;

                        #region FamilyCardHolder
                        var card = entity.CUS_FAMILY_CARD.Where(x => x.CustomerId == cus.CustomerId && x.IsStopped == false).FirstOrDefault();
                        if (card != null)
                            hasFamilyCard = true;
                        cus.FamilyCardHolder = hasFamilyCard;
                        #endregion


                    }
                return TokenManager.GenerateToken(activities);

                }
            }
        }

        [HttpPost]
        [Route("Save")]
        public string Save(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                string jsonObject = "";
                CUS_CUSTOMER_ACTIVITY cusObj = null;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        jsonObject = c.Value;
                        cusObj = JsonConvert.DeserializeObject<CUS_CUSTOMER_ACTIVITY>(jsonObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    CUS_CUSTOMER_ACTIVITY customerActivity;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var cusEntity = entity.Set<CUS_CUSTOMER_ACTIVITY>();
                        if (cusObj.RequestId == 0)
                        {
                            cusObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            cusObj.UpdateDate = cusObj.CreateDate;
                            cusObj.UpdateUserId = cusObj.CreateUserId;

                            customerActivity = cusEntity.Add(cusObj);
                        }
                        else
                        {
                            customerActivity = entity.CUS_CUSTOMER_ACTIVITY.Find(cusObj.RequestId);

                            customerActivity.Count = cusObj.Count;
                            customerActivity.Notes = cusObj.Notes;

                            customerActivity.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            customerActivity.UpdateUserId = cusObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                    }

                    return TokenManager.GenerateToken(customerActivity);
                }
                catch (DbEntityValidationException dbEx)
                {
                    var sb = new StringBuilder();
                    foreach (var validationErrors in dbEx.EntityValidationErrors)
                    {
                        foreach (var validationError in validationErrors.ValidationErrors)
                        {
                            sb.AppendLine(string.Format("Property: {0} Error: {1}",
                            validationError.PropertyName, validationError.ErrorMessage));
                        }
                    }
                    return sb.ToString();
                }
            }
        }


        [HttpPost]
        [Route("getMaxRequestId")]
        public string getMaxRequestId(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {

                using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                {

                    long maxId = 0;
                    var item = entity.CUS_CUSTOMER_ACTIVITY.Count();
                    if (item > 0)
                        maxId = entity.CUS_CUSTOMER_ACTIVITY.Select(x => x.RequestId).Max();
                    maxId++;

                    return TokenManager.GenerateToken(maxId.ToString());

                }
            }
        }

        [HttpPost]
        [Route("Delete")]
        public string Delete(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            string message = "";
            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                long requestId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemId")
                    {
                        requestId = long.Parse(c.Value);
                    }
                    else if (c.Type == "userId")
                    {
                        userId = long.Parse(c.Value);
                    }
                }
                try
                {
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var tmpObject = entity.CUS_CUSTOMER_ACTIVITY.Where(p => p.RequestId == requestId).First();
                        tmpObject.IsActive = false;
                        tmpObject.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpObject.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }


                    return TokenManager.GenerateToken("1");
                }
                catch
                {
                    return TokenManager.GenerateToken("0");
                }

            }

        } 
        [HttpPost]
        [Route("GetUserUsedCount")]
        public string GetUserUsedCount(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            string message = "";
            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                long activityId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemId")
                    {
                        activityId = long.Parse(c.Value);
                    }
                    else if (c.Type == "userId")
                    {
                        userId = long.Parse(c.Value);
                    }
                }
                try
                {
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var tmpObject = entity.CUS_CUSTOMER_ACTIVITY.Where(p => p.ActivityId == activityId
                                        && p.CustomerId == userId && p.IsActive == true).ToList().Sum(p => p.Count);
                        return TokenManager.GenerateToken(tmpObject.ToString());
                    }


                   
                }
                catch
                {
                    return TokenManager.GenerateToken("0");
                }

            }

        }
    }
}