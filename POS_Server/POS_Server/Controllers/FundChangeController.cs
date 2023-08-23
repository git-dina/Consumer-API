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
                            var dumpedNumber = GetMaxDumpedBoxNum();
                            entity.CUS_DUMPED_BOX.Add(new CUS_DUMPED_BOX() { BoxNumber = dumpedNumber});
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
        [Route("GetMaxDumpedBoxNum")]
        public string GetMaxDumpedBoxNum(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                return TokenManager.GenerateToken(GetMaxDumpedBoxNum().ToString());
              
            }
        }

        private long GetMaxDumpedBoxNum()
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                long maxId = 0;
                var item = entity.CUS_DUMPED_BOX.Count();
                if (item > 0)
                    maxId = entity.CUS_DUMPED_BOX.Select(x => x.BoxNumber).Max();
                maxId++;

                return maxId;

            }
        }
    }
}