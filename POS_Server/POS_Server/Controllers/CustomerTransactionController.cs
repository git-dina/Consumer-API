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
    [RoutePrefix("api/CustomerTransaction")]

    public class CustomerTransactionController : ApiController
    {
        CountriesController cc = new CountriesController();
        // GET api/<controller>
        [HttpPost]
        [Route("AddStocks")]
        public async Task<string> AddStocks(string token)
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
                CUS_TRANSACTION transaction = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        jsonObject = c.Value;
                        transaction = JsonConvert.DeserializeObject<CUS_TRANSACTION>(jsonObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {

                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        transaction.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                        transaction.UpdateDate = transaction.CreateDate;
                        transaction.UpdateUserId = transaction.CreateUserId;

                        entity.CUS_TRANSACTION.Add(transaction);

                        var customer = entity.GEN_CUSTOMER.Find(transaction.CustomerId);
                        customer.SharesCount += transaction.StocksCount;

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
        [Route("PullStocks")]
        public async Task<string> PullStocks(string token)
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
                CUS_TRANSACTION transaction = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        jsonObject = c.Value;
                        transaction = JsonConvert.DeserializeObject<CUS_TRANSACTION>(jsonObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {

                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        transaction.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                        transaction.UpdateDate = transaction.CreateDate;
                        transaction.UpdateUserId = transaction.CreateUserId;

                        entity.CUS_TRANSACTION.Add(transaction);

                        var customer = entity.GEN_CUSTOMER.Find(transaction.CustomerId);
                        customer.SharesCount -= transaction.StocksCount;

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
    }
}