using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
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
                CUS_CHANGE_FUND transaction = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        jsonObject = c.Value;
                        transaction = JsonConvert.DeserializeObject<CUS_CHANGE_FUND>(jsonObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
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

                        entity.CUS_CHANGE_FUND.Add(transaction);

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