using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using POS_Server.Models.VM;
using System;
using System.Collections.Generic;
using System.IO;
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
        [Route("SaveList")]
        public string SaveList(string token)
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
                List<GEN_COMPANY_SETTINGS> newObject = new List<GEN_COMPANY_SETTINGS>();
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "Object")
                    {
                        Object = c.Value;
                        newObject = JsonConvert.DeserializeObject<List<GEN_COMPANY_SETTINGS>>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                if (newObject != null)
                {

                    try
                    {
                        int res = 0;
                        if (newObject.Count() > 0)
                        {
                            foreach (var valrow in newObject)
                            {
                                res = Save(valrow);
                            }
                        }

                        return TokenManager.GenerateToken(res.ToString());

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

        public int Save(GEN_COMPANY_SETTINGS newObject)
        {
            string message = "";
            int res = 1;

            if (newObject != null)
            {
                GEN_COMPANY_SETTINGS tmpObject = null;

                try
                {
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var defItem = entity.GEN_COMPANY_SETTINGS.Where(p => p.SettingId == newObject.SettingId).FirstOrDefault();
                        
                        defItem.Value = newObject.Value;
                        entity.SaveChanges();

                    }

                    return (res);

                }
                catch
                {
                    message = "0";
                    return 0;
                }


            }

            return res;



        }

        [Route("PostImage")]
        public IHttpActionResult PostUserImage()
        {

            try
            {
                var httpRequest = HttpContext.Current.Request;

                foreach (string file in httpRequest.Files)
                {

                    HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.Created);

                    var postedFile = httpRequest.Files[file];
                    string imageName = postedFile.FileName;
                    string imageWithNoExt = Path.GetFileNameWithoutExtension(postedFile.FileName);

                    if (postedFile != null && postedFile.ContentLength > 0)
                    {

                        int MaxContentLength = 1024 * 1024 * 1; //Size = 1 MB

                        IList<string> AllowedFileExtensions = new List<string> { ".jpg", ".gif", ".png", ".bmp", ".jpeg", ".tiff", ".jfif" };
                        var ext = postedFile.FileName.Substring(postedFile.FileName.LastIndexOf('.'));
                        var extension = ext.ToLower();

                        if (!AllowedFileExtensions.Contains(extension))
                        {

                            var message = string.Format("Please Upload image of type .jpg,.gif,.png, .jfif, .bmp , .jpeg ,.tiff");
                            return Ok(message);
                        }
                        //else if (postedFile.ContentLength > MaxContentLength)
                        //{

                        //    var message = string.Format("Please Upload a file upto 1 mb.");

                        //    return Ok(message);
                        //}
                        else
                        {
                            var dir = System.Web.Hosting.HostingEnvironment.MapPath("~\\images\\setvalues");
                            if (!Directory.Exists(dir))
                                Directory.CreateDirectory(dir);
                            //  check if image exist
                            var pathCheck = Path.Combine(System.Web.Hosting.HostingEnvironment.MapPath("~\\images\\setvalues"), imageWithNoExt);
                            var files = Directory.GetFiles(System.Web.Hosting.HostingEnvironment.MapPath("~\\images\\setvalues"), imageWithNoExt + ".*");
                            if (files.Length > 0)
                            {
                                File.Delete(files[0]);
                            }

                            //Userimage myfolder name where i want to save my image
                            var filePath = Path.Combine(System.Web.Hosting.HostingEnvironment.MapPath("~\\images\\setvalues"), imageName);
                            postedFile.SaveAs(filePath);

                        }
                    }

                    var message1 = string.Format("Image Updated Successfully.");
                    return Ok(message1);
                }
                var res = string.Format("Please Upload a image.");

                return Ok(res);
            }
            catch (Exception ex)
            {
                var res = string.Format("some Message");

                return Ok(res);
            }
        }

        [HttpPost]
        [Route("GetImage")]
        public string GetImage(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                string imageName = "";
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "imageName")
                    {
                        imageName = c.Value;
                    }
                }
                if (String.IsNullOrEmpty(imageName))
                    return TokenManager.GenerateToken("0");

                string localFilePath;

                try
                {
                    localFilePath = Path.Combine(System.Web.Hosting.HostingEnvironment.MapPath("~\\images\\setvalues"), imageName);

                    byte[] b = System.IO.File.ReadAllBytes(localFilePath);
                    return TokenManager.GenerateToken(Convert.ToBase64String(b));
                }
                catch
                {
                    return TokenManager.GenerateToken(null);

                }
            }
        }
        [HttpPost]
        [Route("UpdateImage")]
        public string UpdateImage(string token)
        {
            //SetValuesObject
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

                    }
                }
                if (newObject != null)
                {

                    try
                    {
                        GEN_COMPANY_SETTINGS Setvalue;
                        using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                        {
                            var Entity = entity.Set<GEN_COMPANY_SETTINGS>();
                            Setvalue = entity.GEN_COMPANY_SETTINGS.Find(newObject.SettingId);
                            Setvalue.Value = newObject.Value;
                            entity.SaveChanges();
                        }
 
                        return TokenManager.GenerateToken(Setvalue.SettingId.ToString());
                    }


                    catch
                    {
                        message = "0";
                        return TokenManager.GenerateToken(message);
                    }



                }
                else
                {
                    return TokenManager.GenerateToken(message);
                }

            }
        }
        }
}