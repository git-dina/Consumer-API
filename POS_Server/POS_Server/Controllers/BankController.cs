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
    [RoutePrefix("api/Bank")]
    public class BankController : ApiController
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

                var supplierList = GetBanks(isActive);
                return TokenManager.GenerateToken(supplierList);
            }
        }

        public List<BankModel> GetBanks(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<GEN_BANK>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var banksList = entity.GEN_BANK
                                    .Where(searchPredicate)
                                .Select(p => new BankModel
                                {
                                    BankId = p.BankId,
                                    BankName = p.BankName,
                                    IsBlocked=p.IsBlocked,
                                    Notes=p.Notes,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                }).ToList();


                return banksList;
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
                GEN_BANK bankObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value;
                        bankObj = JsonConvert.DeserializeObject<GEN_BANK>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    GEN_BANK bank;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var phoneEntity = entity.Set<GEN_BANK>();
                        if (bankObj.BankId == 0)
                        {
                            bankObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            bankObj.UpdateDate = bankObj.CreateDate;
                            bankObj.UpdateUserId = bankObj.CreateUserId;
                            bankObj.IsActive = true;

                            bank = phoneEntity.Add(bankObj);
                        }
                        else
                        {
                            bank = entity.GEN_BANK.Find(bankObj.BankId);
                            bank.BankName = bankObj.BankName;
                            bank.Notes = bankObj.Notes;
                            bank.IsBlocked = bankObj.IsBlocked;
                            bank.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            bank.UpdateUserId = bankObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                    }

                    var phoneList = GetBanks(true);
                    return TokenManager.GenerateToken(phoneList);
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
                        var tmpPhone = entity.GEN_BANK.Where(p => p.BankId == bankId).First();
                        tmpPhone.IsActive = false;
                        tmpPhone.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpPhone.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var phoneList = GetBanks(true);
                    return TokenManager.GenerateToken(phoneList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);
                }

            }

        }
    }
}