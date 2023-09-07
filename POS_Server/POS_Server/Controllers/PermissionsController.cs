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
    [RoutePrefix("api/Permissions")]
    public class PermissionsController : ApiController
    {
        CountriesController cc = new CountriesController();
        [HttpPost]
        [Route("GetAppObject")]
        public string GetAppObject(string token)
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
                    var appObjectList = entity.USR_APP_OBJECT.ToList();
                    return TokenManager.GenerateToken(appObjectList);
                }
            }
        }
    }
}