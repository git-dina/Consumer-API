﻿using POS_Server.Models.VM;
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
    [RoutePrefix("api/SalesInvoice")]
    public class SalesInvoiceController : ApiController
    {
        CountriesController cc = new CountriesController();
        [HttpPost]
        [Route("GetPaymentTypes")]
        public string GetPaymentTypes(string token)
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
                using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                {
                    var lst = entity.SAL_PAYMENT_TYPE.Where(x => x.IsBlocked == true).ToList();
                    return TokenManager.GenerateToken(lst);
                }
            }
        }
    }
}