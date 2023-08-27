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
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;

namespace POS_Server.Controllers
{
    [RoutePrefix("api/FundChange")]
    public class FundChangeController : ApiController
    {
        CountriesController cc = new CountriesController();

        [HttpPost]
        [Route("Save")]
        public async Task<string> Save(string token)
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
                CUS_CHANGE_FUND fundChange = null;
                CUS_CHANGE_FUND secondFundChange = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        jsonObject = c.Value;
                        fundChange = JsonConvert.DeserializeObject<CUS_CHANGE_FUND>(jsonObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                    }
                    else if (c.Type == "secondFundChange")
                    {
                        jsonObject = c.Value;
                        secondFundChange = JsonConvert.DeserializeObject<CUS_CHANGE_FUND>(jsonObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {

                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        fundChange.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                        fundChange.UpdateDate = fundChange.CreateDate;
                        fundChange.UpdateUserId = fundChange.CreateUserId;

                        entity.CUS_CHANGE_FUND.Add(fundChange);

                        var customer = entity.GEN_CUSTOMER.Where(x => x.CustomerId == fundChange.CustomerId).FirstOrDefault();
                        customer.BoxNumber = fundChange.NewFundNumber;

                        if (fundChange.ChangeType == "exchange")
                        {
                            entity.CUS_CHANGE_FUND.Add(secondFundChange);
                            var customer2 = entity.GEN_CUSTOMER.Where(x => x.CustomerId == secondFundChange.CustomerId).FirstOrDefault();
                            customer2.BoxNumber = secondFundChange.NewFundNumber;
                        }
                        else if(fundChange.ChangeType == "emptying")
                        {
                            
                        }
                        entity.SaveChanges();

                    }
                    return TokenManager.GenerateToken("1");
                }
                catch (DbEntityValidationException dbEx)
                {
                    return TokenManager.GenerateToken("0");
                }
            }
        }

        [HttpPost]
        [Route("SearchFundChanges")]
        public string SearchFundChanges(string token)
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

                var transactionsList = GetTransactions( textSearch);
                return TokenManager.GenerateToken(transactionsList);
            }
        }
        public List<FundChangeModel> GetTransactions( string textSearch = "")
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<CUS_CHANGE_FUND>();
                searchPredicate = searchPredicate.And(x => true);

                if (textSearch != "")
                {
                    textSearch = textSearch.ToLower();
                    searchPredicate = searchPredicate.And(s => s.CustomerId.ToString().Contains(textSearch) ||
                    s.GEN_CUSTOMER.Name.ToLower().Contains(textSearch) || s.GEN_CUSTOMER.Family.ToLower().Contains(textSearch)
                    
                     );

                }

                var transactions = entity.CUS_CHANGE_FUND.Where(searchPredicate)
                            .Select(x => new FundChangeModel()
                            {
                                CustomerId = x.CustomerId,
                                CustomerName = x.GEN_CUSTOMER.Name,
                                CivilNum = x.GEN_CUSTOMER.CivilNum,
                                CustomerStatus = x.GEN_CUSTOMER.CustomerStatus,
                                JoinDate = x.GEN_CUSTOMER.JoinDate,
                                MobileNumber = x.GEN_CUSTOMER.GEN_CUSTOMER_ADDRESS.MobileNumber,
                                
                                ChangeDate = x.ChangeDate,
                                ChangeType = x.ChangeType,
                                EmptyFundNumber = x.EmptyFundNumber,
                                NewFundNumber = x.NewFundNumber,
                                OldFundNumber = x.OldFundNumber,
                                Reason = x.Reason,

                                SecondCustomerId = x.SecondCustomerId,
                                SecondCustomerName = x.GEN_CUSTOMER1.Name,
                                SecondCivilNum = x.GEN_CUSTOMER1.CivilNum,
                                SecondCustomerStatus = x.GEN_CUSTOMER1.CustomerStatus,
                                SecondJoinDate = x.GEN_CUSTOMER1.JoinDate,
                                SecondMobileNumber = x.GEN_CUSTOMER1.GEN_CUSTOMER_ADDRESS.MobileNumber,
                                CreateUserId = x.CreateUserId,
                                CreateDate = x.CreateDate,
                                UpdateDate = x.UpdateDate,
                                UpdateUserId = x.UpdateUserId,

                            }).ToList();


                return transactions;
            }
        }

    }
}