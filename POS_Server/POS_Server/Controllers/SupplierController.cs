using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using POS_Server.Classes;
using POS_Server.Models;
using POS_Server.Models.VM;
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
using System.Data.Entity.Validation;

namespace POS_Server.Controllers
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
                        if (c.Value != "")
                            isActive = bool.Parse(c.Value);
                    }
                }

                var supplierList = GetSuplliers(isActive);
                return TokenManager.GenerateToken(supplierList);
            }
        }

        public List<SupplierModel> GetSuplliers(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
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
                                    IsAllowedPO = p.IsAllowedPO,
                                    IsAllowedReceipt = p.IsAllowedReceipt,
                                    IsAllowedDirectReturn = p.IsAllowedDirectReturn,
                                    IsAllowedReturnDiscount = p.IsAllowedReturnDiscount,
                                    IsAllowCashingChecks = p.IsAllowCashingChecks,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                    SupplierPhones = entity.GEN_SUPPLIER_PHONE.Where(x => x.SupId == p.SupId && x.IsActive == true)
                                                    .Select(x => new SupplierPhoneModel()
                                                    {
                                                        PhoneTypeID = x.PhoneTypeID,
                                                        PersonName = x.PersonName,
                                                        PhoneNumber = x.PhoneNumber,
                                                        SupPhoneId = x.SupPhoneId,

                                                    }).ToList(),
                                    SupplierDocuments = entity.GEN_SUPPLIER_DOCUMENT.Where(x => x.SupId == p.SupId && x.IsActive == true)
                                                        .Select(x => new SupplierDocModel()
                                                        {
                                                            DocumentId= x.DocumentId,
                                                            DocName=x.DocName,
                                                            DocTitle = x.DocTitle,
                                                            TypeId=x.TypeId,
                                                            StartDate=x.StartDate,
                                                            EndDate = x.EndDate,
                                                            SupId=x.SupId,
                                                            CreateDate=x.CreateDate,
                                                            UpdateDate=x.UpdateDate,
                                                        }).ToList(),
                                    SupplierSectors = entity.GEN_SUPPLIER_SECTOR.Where(x => x.SupId == p.SupId && x.IsActive == true)
                                                        .Select(x => new SupplierSectorModel()
                                                        {
                                                            SupSectorId = x.SupSectorId,
                                                            SupSectorName = x.SupSectorName,
                                                            Notes = x.Notes,
                                                            DiscountPercentageBranchs = x.DiscountPercentageBranchs,
                                                            DiscountPercentageMarkets = x.DiscountPercentageMarkets,
                                                            DiscountPercentageStores = x.DiscountPercentageStores,
                                                            FreePercentageBranchs = x.FreePercentageBranchs,
                                                            FreePercentageMarkets = x.FreePercentageMarkets,
                                                            FreePercentageStores = x.FreePercentageStores,
                                                            IsBlocked = x.IsBlocked,
                                                            SupId = x.SupId,
                                                            supplierSectorSpecifies = entity.GEN_SUPPLIER_SECTOR_SPECIFY.Where(m => m.SupSectorId == x.SupSectorId && m.IsActive == true)
                                                                                        .Select(m => new SupplierSectorSpecModel()
                                                                                        {
                                                                                            SupSectorSpecifyId = m.SupSectorSpecifyId,
                                                                                            FreePercentage = m.FreePercentage,
                                                                                            DiscountPercentage = m.DiscountPercentage,
                                                                                            Notes = m.Notes,
                                                                                            BranchId = m.BranchId,
                                                                                            SupSectorId = m.SupSectorId,
                                                                                            SupId = m.SupId,
                                                                                        }).ToList(),
                                                        }).ToList(),


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

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                string agentObject = "";
                GEN_SUPPLIER subObj = null;
                SupplierModel subModel = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        agentObject = c.Value.Replace("\\", string.Empty);
                        agentObject = agentObject.Trim('"');
                        subObj = JsonConvert.DeserializeObject<GEN_SUPPLIER>(agentObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        subModel = JsonConvert.DeserializeObject<SupplierModel>(agentObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    GEN_SUPPLIER sup;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var supEntity = entity.Set<GEN_SUPPLIER>();
                        if (subObj.SupId == 0)
                        {
                            subObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            subObj.UpdateDate = subObj.CreateDate;
                            subObj.UpdateUserId = subObj.CreateUserId;
                            subObj.IsActive = true;
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
                            sup.IsAllowedPO = subObj.IsAllowedPO;
                            sup.IsAllowedReceipt = subObj.IsAllowedReceipt;
                            sup.IsAllowedDirectReturn = subObj.IsAllowedDirectReturn;
                            sup.IsAllowedReturnDiscount = subObj.IsAllowedReturnDiscount;
                            sup.IsAllowCashingChecks = subObj.IsAllowCashingChecks;
                            sup.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            sup.UpdateUserId = subObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                        SaveSupplierPhones(subModel.SupplierPhones, sup.SupId);
                        SaveSupplierSectors(subModel.SupplierSectors, sup.SupId);
                        SaveSupplierDocuments(subModel.SupplierDocuments, sup.SupId);
                    }

                    var supList = GetSuplliers(true);
                    return TokenManager.GenerateToken(supList);
                }
catch (DbEntityValidationException dbEx)
                {
                    var sb = new StringBuilder();
                    foreach (var validationErrors in dbEx.EntityValidationErrors)
                    {
                        foreach (var validationError in validationErrors.ValidationErrors)
                        {
                            sb.AppendLine(string.Format("Property: {0} Error: {1}",
                            validationError.PropertyName, validationError.ErrorMessage));
                        }
                    }
                   return sb.ToString();
                }
            }
        }

        public void SaveSupplierPhones(List<SupplierPhoneModel> supplierPhones,long supId)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {

                var phones = entity.GEN_SUPPLIER_PHONE.Where(x => x.SupId == supId).ToList();
                if (phones.Count() > 0)
                {
                    entity.GEN_SUPPLIER_PHONE.RemoveRange(phones);
                    entity.SaveChanges();
                }
                GEN_SUPPLIER_PHONE phone;
                if (supplierPhones != null)
                { 
                    foreach (var row in supplierPhones)
                    {
                        phone = new GEN_SUPPLIER_PHONE()
                        {
                            PersonName = row.PhoneNumber,
                            PhoneNumber = row.PhoneNumber,
                            PhoneTypeID = row.PhoneTypeID,
                            SupId = supId,
                            IsActive = true,
                            CreateDate = DateTime.Now,
                            UpdateDate = DateTime.Now,
                            CreateUserId = row.CreateUserId,
                            UpdateUserId = row.UpdateUserId,
                        };

                        entity.GEN_SUPPLIER_PHONE.Add(phone);
                    }
                    entity.SaveChanges();

                }

            }
        }

        public void SaveSupplierSectors(List<SupplierSectorModel> supplierSectors,long supId)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {

                if (supplierSectors != null)
                {
                    var supSectorIds = supplierSectors.Select(x => x.SupSectorId).ToList();
                    #region remove not existed sectors

                    var sectorsToRemove = entity.GEN_SUPPLIER_SECTOR.Where(x => x.SupId == supId
                                && !supSectorIds.Contains(x.SupSectorId)).ToList();

                    foreach (var row in sectorsToRemove)
                    {
                        row.IsActive = false;
                        row.UpdateDate = DateTime.Now;
                        row.UpdateUserId = row.UpdateUserId;

                        entity.SaveChanges();
                    }
                    #endregion

                    #region edit existed sectors
                    var sectorsToEdit = entity.GEN_SUPPLIER_SECTOR.Where(x => x.SupId == supId
                                    && supSectorIds.Contains(x.SupSectorId)).ToList();

                    foreach (var row in sectorsToEdit)
                    {
                        var sec = supplierSectors.Where(x => x.SupSectorId == row.SupSectorId).FirstOrDefault();
                        row.SupSectorName = sec.SupSectorName;
                        row.IsBlocked = sec.IsBlocked;
                        row.Notes = sec.Notes;
                        row.DiscountPercentageBranchs = sec.DiscountPercentageBranchs;
                        row.DiscountPercentageMarkets = sec.DiscountPercentageMarkets;
                        row.DiscountPercentageStores = sec.DiscountPercentageStores;
                        row.FreePercentageBranchs = sec.FreePercentageBranchs;
                        row.FreePercentageMarkets = sec.FreePercentageMarkets;
                        row.FreePercentageStores = sec.FreePercentageStores;
                        row.UpdateDate = DateTime.Now;
                        row.UpdateUserId = sec.UpdateUserId;
                        entity.SaveChanges();

                        var sectorSpecify = entity.GEN_SUPPLIER_SECTOR_SPECIFY.Where(x => x.SupSectorId == row.SupSectorId && x.SupId == supId).ToList();
                        foreach (var r in sectorSpecify)
                        {
                            var supSectorSpecIds = sec.supplierSectorSpecifies.Select(x => x.SupSectorSpecifyId).ToList();

                            #region remove not existed sectors specify
                            var sectorsSpecToRemove = entity.GEN_SUPPLIER_SECTOR_SPECIFY.Where(x => x.SupSectorId == row.SupSectorId
                                            && !supSectorSpecIds.Contains(x.SupSectorSpecifyId)).ToList();

                            foreach (var rs in sectorsSpecToRemove)
                            {
                                rs.IsActive = false;
                                rs.UpdateDate = DateTime.Now;
                                rs.UpdateUserId = row.UpdateUserId;

                                entity.SaveChanges();
                            }
                            #endregion

                            #region edit existed sectors specify
                            var sectorsSpecToEdit = entity.GEN_SUPPLIER_SECTOR_SPECIFY.Where(x => x.SupSectorId == row.SupSectorId
                                            && supSectorSpecIds.Contains(x.SupSectorSpecifyId)).ToList();

                            foreach (var rs in sectorsSpecToEdit)
                            {
                                var secSpec = sec.supplierSectorSpecifies.Where(x => x.SupSectorSpecifyId == rs.SupSectorSpecifyId).FirstOrDefault();
                                rs.Notes = secSpec.Notes;
                                rs.BranchId = secSpec.BranchId;
                                rs.DiscountPercentage = secSpec.DiscountPercentage;
                                rs.FreePercentage = secSpec.FreePercentage;
                                rs.UpdateDate = DateTime.Now;
                                rs.UpdateUserId = sec.UpdateUserId;
                            }
                            #endregion

                            #region add new sectors specify
                            var newSecSpec = sec.supplierSectorSpecifies.Where(x => x.SupSectorSpecifyId == 0).ToList();
                            foreach (var rs in newSecSpec)
                            {
                                var spec = new GEN_SUPPLIER_SECTOR_SPECIFY()
                                {
                                    IsActive = true,
                                    BranchId = rs.BranchId,
                                    DiscountPercentage = rs.DiscountPercentage,
                                    FreePercentage = rs.FreePercentage,
                                    Notes = rs.Notes,
                                    CreateDate = DateTime.Now,
                                    UpdateDate = DateTime.Now,
                                    CreateUserId = sec.CreateUserId,
                                    UpdateUserId = sec.UpdateUserId,
                                    SupId = supId,
                                    SupSectorId = sec.SupSectorId,
                                };
                                entity.GEN_SUPPLIER_SECTOR_SPECIFY.Add(spec);
                            }
                            entity.SaveChanges();
                            #endregion
                        }
                    }
                    #endregion

                    #region add new sectors
                    var newSectors = supplierSectors.Where(x => x.SupSectorId == 0).ToList();
                    foreach (var row in newSectors)
                    {
                        var sec = new GEN_SUPPLIER_SECTOR()
                        {
                            SupSectorName = row.SupSectorName,
                            DiscountPercentageBranchs = row.DiscountPercentageBranchs,
                            DiscountPercentageMarkets = row.DiscountPercentageMarkets,
                            DiscountPercentageStores = row.DiscountPercentageStores,
                            FreePercentageBranchs = row.FreePercentageBranchs,
                            FreePercentageMarkets = row.FreePercentageMarkets,
                            FreePercentageStores = row.FreePercentageStores,
                            IsActive = true,
                            IsBlocked = row.IsBlocked,
                            Notes = row.Notes,
                            SupId = supId,
                            CreateDate = DateTime.Now,
                            UpdateDate = DateTime.Now,
                            CreateUserId = row.CreateUserId,
                            UpdateUserId = row.CreateUserId,

                        };
                        entity.GEN_SUPPLIER_SECTOR.Add(sec);

                        long supSecId = entity.SaveChanges();

                        foreach (var rs in row.supplierSectorSpecifies)
                        {
                            var spec = new GEN_SUPPLIER_SECTOR_SPECIFY()
                            {
                                IsActive = true,
                                BranchId = rs.BranchId,
                                DiscountPercentage = rs.DiscountPercentage,
                                FreePercentage = rs.FreePercentage,
                                Notes = rs.Notes,
                                CreateDate = DateTime.Now,
                                UpdateDate = DateTime.Now,
                                CreateUserId = sec.CreateUserId,
                                UpdateUserId = sec.UpdateUserId,
                                SupId = supId,
                                SupSectorId = supSecId,
                            };
                            entity.GEN_SUPPLIER_SECTOR_SPECIFY.Add(spec);
                        }
                        entity.SaveChanges();
                    }
                    #endregion
                }
                else
                {
                    var sectorsToRemove = entity.GEN_SUPPLIER_SECTOR.Where(x => x.SupId == supId).ToList();
                   if(sectorsToRemove.Count > 0)
                    foreach (var row in sectorsToRemove)
                    {
                        row.IsActive = false;
                        entity.SaveChanges();
                    }
                }
            }

        }

        public void SaveSupplierDocuments(List<SupplierDocModel> supplierDocuments, long supId)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                if (supplierDocuments != null)
                {
                    var supDocumnetsIds = supplierDocuments.Select(x => x.DocumentId).ToList();
                    #region remove not existed documents

                    var documentsToRemove = entity.GEN_SUPPLIER_DOCUMENT.Where(x => x.SupId == supId
                                && !supDocumnetsIds.Contains(x.DocumentId)).ToList();

                    foreach (var row in documentsToRemove)
                    {
                        row.IsActive = false;
                        row.UpdateDate = DateTime.Now;
                        row.UpdateUserId = row.UpdateUserId;

                        entity.SaveChanges();
                    }
                    #endregion

                    #region edit existed documents
                    var documentsToEdit = entity.GEN_SUPPLIER_DOCUMENT.Where(x => x.SupId == supId
                                    && supDocumnetsIds.Contains(x.DocumentId)).ToList();

                    foreach (var row in documentsToEdit)
                    {
                        var sec = supplierDocuments.Where(x => x.DocumentId == row.DocumentId).FirstOrDefault();
                        row.DocName = sec.DocName;
                        row.DocTitle = sec.DocTitle;
                        row.StartDate = row.EndDate;
                        row.UpdateDate = DateTime.Now;
                        row.UpdateUserId = sec.UpdateUserId;
                        entity.SaveChanges();

                    }
                    #endregion

                    #region add new documents
                    var newDocuments = supplierDocuments.Where(x => x.DocumentId == 0).ToList();
                    foreach (var row in newDocuments)
                    {
                        var doc = new GEN_SUPPLIER_DOCUMENT()
                        {
                            DocName = row.DocName,
                            DocTitle = row.DocTitle,
                            StartDate = row.StartDate,
                            EndDate = row.EndDate,
                            DocumentId = row.DocumentId,
                            IsActive = true,
                            SupId = supId,
                            CreateDate = DateTime.Now,
                            UpdateDate = DateTime.Now,
                            CreateUserId = row.CreateUserId,
                            UpdateUserId = row.CreateUserId,

                        };
                        entity.GEN_SUPPLIER_DOCUMENT.Add(doc);

                        long supSecId = entity.SaveChanges();

                        entity.SaveChanges();
                    }
                    #endregion
                }
                else
                {
                    var documentsToRemove = entity.GEN_SUPPLIER_DOCUMENT.Where(x => x.SupId == supId).ToList();
                    foreach (var row in documentsToRemove)
                    {
                        row.IsActive = false;
                        entity.SaveChanges();
                    }
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
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
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
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
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
