using LinqKit;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using POS_Server.Models;
using POS_Server.Models.VM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Claims;
using System.Web;
using System.Web.Http;

namespace POS_Server.Controllers
{
    [RoutePrefix("api/CustomerBank")]
    public class CustomerBankController : ApiController
    {
        CountriesController cc = new CountriesController();
        [HttpPost]
        [Route("Get")]
        public string Get(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            bool? isActive = null;

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
                    if (c.Type == "isActive")
                    {
                        if (c.Value != "")
                            isActive = bool.Parse(c.Value);
                    }
                }

                var supplierList = GetCustomerBanks(isActive);
                return TokenManager.GenerateToken(supplierList);
            }
        }

        public List<CustomerBankModel> GetCustomerBanks(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<GEN_CUSTOMER_BANK>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var brandsList = entity.GEN_CUSTOMER_BANK
                                    .Where(searchPredicate)
                                .Select(p => new CustomerBankModel
                                {
                                    BankId = p.BankId,
                                    Name = p.Name,
                                    Code = p.Code,
                                    Description = p.Description,
                                    Notes = p.Notes,
                                    Symbol = p.Symbol,
                                    IsBlocked = p.IsBlocked,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                }).ToList();


                return brandsList;
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
                string Object = "";
                GEN_CUSTOMER_BANK bankObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value;
                        bankObj = JsonConvert.DeserializeObject<GEN_CUSTOMER_BANK>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    GEN_CUSTOMER_BANK brand;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var bankEntity = entity.Set<GEN_CUSTOMER_BANK>();
                        if (bankObj.BankId == 0)
                        {
                            bankObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            bankObj.UpdateDate = bankObj.CreateDate;
                            bankObj.UpdateUserId = bankObj.CreateUserId;
                            bankObj.IsActive = true;

                            brand = bankEntity.Add(bankObj);
                        }
                        else
                        {
                            brand = entity.GEN_CUSTOMER_BANK.Find(bankObj.BankId);
                            brand.Name = bankObj.Name;
                            brand.Description = bankObj.Description;
                            brand.Code = bankObj.Code;
                            brand.Symbol = bankObj.Symbol;
                            brand.Notes = bankObj.Notes;
                            brand.IsBlocked = bankObj.IsBlocked;
                            brand.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            brand.UpdateUserId = bankObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                    }

                    var jobList = GetCustomerBanks(true);
                    return TokenManager.GenerateToken(jobList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);

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
                long bankId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemId")
                    {
                        bankId = long.Parse(c.Value);
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
                        var tmpJob = entity.GEN_CUSTOMER_BANK.Where(p => p.BankId == bankId).First();
                        tmpJob.IsActive = false;
                        tmpJob.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpJob.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var jobList = GetCustomerBanks(true);
                    return TokenManager.GenerateToken(jobList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);
                }

            }

        }

        [HttpPost]
        [Route("GetMaxBankId")]
        public string GetMaxBankId(string token)
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
                    var item = entity.GEN_CUSTOMER_BANK.Count();
                    if (item > 0)
                        maxId = entity.GEN_CUSTOMER_BANK.Select(x => x.BankId).Max();
                    maxId++;

                    return TokenManager.GenerateToken(maxId.ToString());

                }
            }
        }
    }
}