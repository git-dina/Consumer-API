using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Consumer_API.Classes;
using Consumer_API.Models;
using Consumer_API.Models.VM;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Security.Claims;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web;
using LinqKit;
using POS_Server;

namespace Consumer_API.Controllers
{
    [RoutePrefix("api/Supplier")]
    public class SupplierController : ApiController
    {
        CountriesController cc = new CountriesController();
        // GET api/Agent
        [HttpPost]
        [Route("Get")]
        public string Get(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            bool? isActive = null;
            Boolean canDelete = false;
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
                    if (c.Type == "isActive")
                    {
                        if(c.Value != "")
                            isActive =bool.Parse( c.Value);
                    }
                }

                var supplierList = GetSuplliers(isActive);
                return TokenManager.GenerateToken(supplierList);             
            }
        }         

        public List<SupplierModel> GetSuplliers(bool? isActive)
        {
            using (DBEntities entity = new DBEntities())
            {
                var searchPredicate = PredicateBuilder.New<GEN_SUPPLIER>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var supplierList = entity.GEN_SUPPLIER
                                    .Where(searchPredicate)
                                .Select(p => new SupplierModel
                                {
                                    SupId = p.SupId,
                                    SupRef = p.SupRef,
                                    Name = p.Name,
                                    ShortName = p.Name,
                                    Address = p.Address,
                                    SupplierTypeId = p.SupplierTypeId,
                                    SupplierGroupId = p.SupplierGroupId,
                                    AssistantSupId = p.AssistantSupId,
                                    AssistantAccountNumber = p.AssistantAccountNumber,
                                    AssistantAccountName = p.AssistantAccountName,
                                    AssistantStartDate = p.AssistantStartDate,
                                    DiscountPercentage = p.DiscountPercentage,
                                    FreePercentag = p.FreePercentag,
                                    BankId = p.BankId,
                                    BankAccount = p.BankAccount,
                                    SupNODays = p.SupNODays,
                                    AccountCode = p.AccountCode,
                                    Email = p.Email,
                                    BOX = p.BOX,
                                    IsBlocked = p.IsBlocked,
                                    LicenseId = p.LicenseId,
                                    LicenseDate = p.LicenseDate,
                                    Notes = p.Notes,
                                    PurchaseOrderNotes = p.PurchaseOrderNotes,
                                    Image = p.Image,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                }).ToList();

                return supplierList;
            }
        }
        // add or update agent
        [HttpPost]
        [Route("Save")]
        public string Save(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            string message = "";
            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                string agentObject = "";
                GEN_SUPPLIER subObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        agentObject = c.Value.Replace("\\", string.Empty);
                        agentObject = agentObject.Trim('"');
                        subObj = JsonConvert.DeserializeObject<GEN_SUPPLIER>(agentObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    GEN_SUPPLIER sup;
                    using (DBEntities entity = new DBEntities())
                    {
                        var supEntity = entity.Set<GEN_SUPPLIER>();
                        if (subObj.SupId == 0)
                        {
                            subObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            subObj.UpdateDate = subObj.CreateDate;
                            subObj.UpdateUserId = subObj.CreateUserId;

                            sup = supEntity.Add(subObj);
                        }
                        else
                        {
                            sup = entity.GEN_SUPPLIER.Find(subObj.SupId);
                            sup.SupRef = subObj.SupRef;
                            sup.Name = subObj.Name;
                            sup.ShortName = subObj.Name;
                            sup.Address = subObj.Address;
                            sup.SupplierTypeId = subObj.SupplierTypeId;
                            sup.SupplierGroupId = subObj.SupplierGroupId;
                            sup.AssistantSupId = subObj.AssistantSupId;
                            sup.AssistantAccountNumber = subObj.AssistantAccountNumber;
                            sup.AssistantAccountName = subObj.AssistantAccountName;
                            sup.AssistantStartDate = subObj.AssistantStartDate;
                            sup.DiscountPercentage = subObj.DiscountPercentage;
                            sup.FreePercentag = subObj.FreePercentag;
                            sup.BankId = subObj.BankId;
                            sup.BankAccount = subObj.BankAccount;
                            sup.SupNODays = subObj.SupNODays;
                            sup.AccountCode = subObj.AccountCode;
                            sup.Email = subObj.Email;
                            sup.BOX = subObj.BOX;
                            sup.IsBlocked = subObj.IsBlocked;
                            sup.LicenseId = subObj.LicenseId;
                            sup.LicenseDate = subObj.LicenseDate;
                            sup.Notes = subObj.Notes;
                            sup.PurchaseOrderNotes = subObj.PurchaseOrderNotes;
                            sup.Image = subObj.Image;
                            sup.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            sup.UpdateUserId = subObj.UpdateUserId;
                        }
                        entity.SaveChanges();
                        message = sup.SupId.ToString();

                    }

                    var supList = GetSuplliers(true);
                    return TokenManager.GenerateToken(supList);
                }
                catch
                {
                    message = "0";
                    return TokenManager.GenerateToken(null);
                }
            }
        }
        [HttpPost]
        [Route("Delete")]
        public string Delete(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            string message = "";
            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                long subId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemId")
                    {
                        subId = long.Parse(c.Value);
                    }
                    else if (c.Type == "userId")
                    {
                        userId = long.Parse(c.Value);
                    }
                }
                try
                {
                    using (DBEntities entity = new DBEntities())
                    {
                        var tmpAgent = entity.GEN_SUPPLIER.Where(p => p.SupId == subId).First();
                        tmpAgent.IsActive = false;
                        tmpAgent.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpAgent.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var supList = GetSuplliers(true);
                    return TokenManager.GenerateToken(supList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);
                }
               
            }
            
        }

        [Route("PostImage")]
        public  IHttpActionResult PostImage()
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
                        else if (postedFile.ContentLength > MaxContentLength)
                        {

                            var message = string.Format("Please Upload a file upto 1 mb.");

                            return Ok(message);
                        }
                        else
                        {
                            //  check if image exist
                            var pathCheck = Path.Combine(System.Web.Hosting.HostingEnvironment.MapPath("~\\images\\supplier"), imageWithNoExt);
                            var files = Directory.GetFiles(System.Web.Hosting.HostingEnvironment.MapPath("~\\images\\supplier"), imageWithNoExt + ".*");
                            if (files.Length > 0)
                            {
                                File.Delete(files[0]);
                            }

                            //Userimage myfolder name where i want to save my image
                            var filePath = Path.Combine(System.Web.Hosting.HostingEnvironment.MapPath("~\\images\\agent"), imageName);
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
                    localFilePath = Path.Combine(System.Web.Hosting.HostingEnvironment.MapPath("~\\images\\supplier"), imageName);

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
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                string subObject = "";
                GEN_SUPPLIER subObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        subObject = c.Value.Replace("\\", string.Empty);
                        subObject = subObject.Trim('"');
                        subObj = JsonConvert.DeserializeObject<GEN_SUPPLIER>(subObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    GEN_SUPPLIER supplier;
                    using (DBEntities entity = new DBEntities())
                    {
                        var agentEntity = entity.Set<GEN_SUPPLIER>();                      
                        supplier = entity.GEN_SUPPLIER.Find(subObj.SupId);
                        supplier.Image = subObj.Image;
                        entity.SaveChanges();
                    }

                    var supList = GetSuplliers(true);
                    return TokenManager.GenerateToken(supList);
                }

                catch
                {
                    return TokenManager.GenerateToken(null);
                }
            }
           
        }
         

    }
}
