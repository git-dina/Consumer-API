using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace POS_Server.Controllers
{
    [RoutePrefix("api/Promotion")]
    public class PromotionController : ApiController
    {
        CountriesController cc = new CountriesController();

    }
}