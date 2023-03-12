using Newtonsoft.Json;
using POS_Server.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using POS_Server.Models.VM;
using System.Security.Claims;
using System.Web;
using POS_Server;

namespace POS_Server.Controllers
{
    [RoutePrefix("api/Countries")]
    public class CountriesController : ApiController
    {

      
       public string TimeZoneDiff(string tzone1name, string tzone2name)
        {
            //program-servertimez
            var tzone1 = TimeZoneInfo.FindSystemTimeZoneById
                (tzone1name);
            var tzone2 = TimeZoneInfo.FindSystemTimeZoneById
                (tzone2name);
            var now = DateTimeOffset.UtcNow;
            TimeSpan tzone1span = tzone1.GetUtcOffset(now);
            TimeSpan tzone2span = tzone2.GetUtcOffset(now);
            TimeSpan difference = tzone1span - tzone2span;

            return difference.ToString();
        }
        public TimeSpan offsetTime()
        {
            CountryModel country = new CountryModel();
            
            //server timezone
            TimeZone serverTimeZone = TimeZone.CurrentTimeZone;
            string ServerStandardName = serverTimeZone.StandardName;
            //program time zone
            country = GetDefaultCountry();
            string programStandardName = country.timeZoneName;
        string timeoffset=TimeZoneDiff(programStandardName, ServerStandardName);
            TimeSpan offset = TimeSpan.Parse(timeoffset);
            return offset;
        }
        public DateTime AddOffsetTodate(DateTime date )
        {
            TimeSpan ts = new TimeSpan();
            ts = offsetTime();
            date = date.AddHours(ts.TotalHours);
            return date;
        }
        public CountryModel GetDefaultCountry()
        {
                try
                {
                    using (DBEntities entity = new DBEntities())
                    {
                    CountryModel item = entity.LST_CountriesCodes
                   .Where(c => c.isDefault == 1)
                   .Select(c => new CountryModel
                   {
                       countryId = c.countryId,
                       code = c.code,
                       currency = c.currency,
                       name = c.name,
                       isDefault = c.isDefault,
                       currencyId = c.currencyId,
                       timeZoneName=c.timeZoneName,
                       timeZoneOffset=c.timeZoneOffset,
                   }).FirstOrDefault();

                        return item;
                    }
                }
                catch
                {
                    CountryModel cntry = new CountryModel();
                    return  cntry ;
                }
        }

        [HttpPost]
        [Route("GetOffsetTime")]
        public string GetOffsetTime(string token)
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
                    TimeSpan ts = new TimeSpan();
                    ts = offsetTime();
                    return TokenManager.GenerateToken(ts);
                }
                catch
                {
                    return TokenManager.GenerateToken("0");
                }

            }
        }

    }
}