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
    [RoutePrefix("api/CustomerBankAccount")]
    public class CustomerBankAccountController : ApiController
    {
        CountriesController cc = new CountriesController();

        [HttpPost]
        [Route("GetByCustomerId")]
        public string GetByCustomerId(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            long customerId = 0;

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
                    if (c.Type == "customerId")
                    {
                        if (c.Value != "")
                            customerId = long.Parse(c.Value);
                    }
                }

                var accList = GetCustomerAccounts(customerId);
                return TokenManager.GenerateToken(accList);
            }
        }

        public List<BankAccountModel> GetCustomerAccounts(long customerId)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {

                var accList = entity.CUS_CUSTOMER_BANK_ACCOUNT
                                    .Where(x => x.CustomerId == customerId)
                                .Select(p => new BankAccountModel
                                {
                                   BankAccountId = p.BankAccountId,
                                   CustomerId = p.CustomerId,
                                   NewBankId = p.NewBankId,
                                   NewBankName = entity.GEN_CUSTOMER_BANK.Where( x => x.BankId == p.NewBankId).Select(x => x.Name).FirstOrDefault(),
                                   NewIBAN = p.NewIBAN,
                                   OldBankId = p.OldBankId,
                                   OldBankName = entity.GEN_CUSTOMER_BANK.Where(x => x.BankId == p.OldBankId).Select(x => x.Name).FirstOrDefault(),
                                   OldIBAN = p.OldIBAN,
                                    Notes = p.Notes,
                                 
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                }).ToList();


                return accList;
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
                CUS_CUSTOMER_BANK_ACCOUNT bankObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value;
                        bankObj = JsonConvert.DeserializeObject<CUS_CUSTOMER_BANK_ACCOUNT>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    CUS_CUSTOMER_BANK_ACCOUNT acc;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var accEntity = entity.Set<CUS_CUSTOMER_BANK_ACCOUNT>();

                        bankObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                        bankObj.UpdateDate = bankObj.CreateDate;
                        bankObj.UpdateUserId = bankObj.CreateUserId;

                        acc = accEntity.Add(bankObj);

                        var customer = entity.GEN_CUSTOMER.Find(bankObj.CustomerId);
                        customer.IBAN = bankObj.NewIBAN;
                        customer.BankId = bankObj.NewBankId;
                        entity.SaveChanges();

                    }

                    var jobList = GetCustomerAccounts((long)bankObj.CustomerId);
                    return TokenManager.GenerateToken(jobList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);

                }
            }
        }
    }
}