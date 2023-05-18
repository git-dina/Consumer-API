using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
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
    [RoutePrefix("api/CompanySettings")]
    public class CompanySettingsController : ApiController
    {
        [HttpPost]
        [Route("Get")]
        public string Get(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                try
                {


                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {


                        var list = entity.GEN_COMPANY_SETTINGS

                           .Select(c => new
                           {
                               c.SettingId,
                               c.Name,
                               c.Value,
                               c.Notes,

                           }).ToList();

                        return TokenManager.GenerateToken(list);

                    }

                }
                catch
                {
                    return TokenManager.GenerateToken("0");
                }

            }

        }

        [HttpPost]
        [Route("Save")]
        public string Save(string token)
        {

            //string Object string newObject
            string message = "";



            token = TokenManager.readToken(HttpContext.Current.Request);
            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                string Object = "";
                GEN_COMPANY_SETTINGS newObject = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "Object")
                    {
                        Object = c.Value;
                        newObject = JsonConvert.DeserializeObject<GEN_COMPANY_SETTINGS>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                if (newObject != null)
                {


                    GEN_COMPANY_SETTINGS tmpObject;


                    try
                    {
                        using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                        {

                            var sEntity = entity.Set<GEN_COMPANY_SETTINGS>();
                            if (newObject.SettingId == 0)
                            {

                                sEntity.Add(newObject);
                                entity.SaveChanges();
                                message = newObject.SettingId.ToString();
                            }
                            else
                            {

                                tmpObject = entity.GEN_COMPANY_SETTINGS.Find(newObject.SettingId);

                                tmpObject.Value = newObject.Value;
                                tmpObject.Notes = newObject.Notes;

                                entity.SaveChanges();
                                message = tmpObject.SettingId.ToString();
                            }

                        }
                        return TokenManager.GenerateToken(message);

                    }
                    catch
                    {
                        message = "0";
                        return TokenManager.GenerateToken(message);
                    }


                }

                return TokenManager.GenerateToken(message);

            }
        }
    }
}