using LinqKit;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using POS_Server.Models;
using POS_Server.Models.VM;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;

namespace POS_Server.Controllers
{
    [RoutePrefix("api/Customer")]
    public class CustomerController : ApiController
    {
        CountriesController cc = new CountriesController();

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

                var supplierList = GetCustomers(isActive);
                return TokenManager.GenerateToken(supplierList);
            }
        }

        public List<CustomerModel> GetCustomers(bool? isActive, string textSearch = "")
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<GEN_CUSTOMER>();
                searchPredicate = searchPredicate.And(x => x.IsArchived == false);

                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);
                if (textSearch != "")
                {
                    textSearch = textSearch.ToLower();
                    searchPredicate = searchPredicate.And(x => x.IsActive == true);
                    searchPredicate = searchPredicate.And(s => s.BoxNumber.ToString().Contains(textSearch) ||
                    s.Name.ToLower().Contains(textSearch) || s.Family.ToLower().Contains(textSearch)
                     || s.CustomerId.ToString().Contains(textSearch)
                     );

                }

                var nowDate = cc.AddOffsetTodate(DateTime.Now);
                var customers = entity.GEN_CUSTOMER.Where(searchPredicate)
                            .Select(x => new CustomerModel()
                            {
                                CustomerId = x.CustomerId,
                                BoxNumber = x.BoxNumber,
                                Name = x.Name,
                                Family = x.Family,
                                InvoiceName = x.InvoiceName,
                                CivilNum = x.CivilNum,
                                CustomerStatus = x.CustomerStatus,
                                MemberNature = x.MemberNature,
                                DOB = x.DOB,
                                BankId = x.BankId,
                                IBAN = x.GEN_CUSTOMER_BANK.Symbol,
                                Gender = x.Gender,
                                MaritalStatus = x.MaritalStatus,
                                IsArchived = x.IsArchived,
                                IsActive = x.IsActive,
                                JobId = x.JobId,
                                JoinDate = x.JoinDate,
                                JoiningSharesCount = x.JoiningSharesCount,
                                SharesCount = x.SharesCount,
                                AllStocksCount = x.JoiningSharesCount + x.SharesCount,
                                Notes = x.Notes,
                                ReceiptVoucherDate = x.ReceiptVoucherDate,
                                ReceiptVoucherNumber = x.ReceiptVoucherNumber,
                                SessionNumber = x.SessionNumber,
                                CalculateEarnings = x.CalculateEarnings,
                                DataCompleted = x.DataCompleted,
                                PrintNameOnInv = x.PrintNameOnInv,
                                RegisteredInMinistry = x.RegisteredInMinistry,
                                CreateUserId = x.CreateUserId,
                                CreateDate = x.CreateDate,
                                UpdateDate = x.UpdateDate,
                                UpdateUserId = x.UpdateUserId,
                                CurrentPurchses = entity.SAL_INVOICE.Where(m => m.CustomerId == x.CustomerId
                                                        && m.IsActive == true && m.CreateDate.Value.Year == nowDate.Year)
                                                    .Sum(m => m.TotalNet) == null ? 0 : entity.SAL_INVOICE.Where(m => m.CustomerId == x.CustomerId && m.IsActive == true).Sum(m => m.TotalNet).Value,
                                customerAddress = entity.GEN_CUSTOMER_ADDRESS.Where(m => m.CustomerId == x.CustomerId)
                                                    .Select(m => new CustomerAddressModel() {
                                                        AutomtedNumber = m.AutomtedNumber,
                                                        AvenueNumber = m.AvenueNumber,
                                                        Employer = m.Employer,
                                                        Floor = m.Floor,
                                                        AreaId = m.AreaId,
                                                        Guardian = m.Guardian,
                                                        HomePhone = m.HomePhone,
                                                        HouseNumber = m.HouseNumber,
                                                        KinshipId = m.KinshipId,
                                                        MailBox = m.MailBox,
                                                        MobileNumber = m.MobileNumber,
                                                        MobileNumber2 = m.MobileNumber2,
                                                        Plot = m.Plot,
                                                        PostalCode = m.PostalCode,
                                                        SectionId = m.SectionId,
                                                        Street = m.Street,
                                                        WorkAddress = m.WorkAddress,
                                                        WorkPhone = m.WorkPhone }).FirstOrDefault(),
                                customerDocuments = entity.GEN_CUSTOMER_DOCUMENT.Where(m => m.CustomerId == x.CustomerId && m.IsActive == true)
                                                    .Select(m => new DocumentModel() {
                                                        DocumentId = m.DocumentId,
                                                        DocName = m.DocName,
                                                        DocTitle = m.DocTitle,
                                                    }).ToList(),
                            }).ToList();

                bool canArchive = false;
                bool hasFamilyCard = false;
                DateTime zeroTime = new DateTime(1, 1, 1);
                foreach (var cus in customers)
                {
                    canArchive = false;
                    hasFamilyCard = false;

                    var withdraw = entity.CUS_TRANSACTION.Where(x => x.CustomerId == cus.CustomerId && x.TransactionType == "retreat").FirstOrDefault();
                    if(withdraw != null)
                    {
                        var withdrawDate = withdraw.TransactionDate;
                     
                        TimeSpan span = nowDate - (DateTime)withdrawDate;
                        // Because we start at year 1 for the Gregorian
                        // calendar, we must subtract a year here.
                        int years = (zeroTime + span).Year - 1;
                        if(years >= 2)
                            canArchive = true;

                        cus.WithdrawnDate = withdrawDate;
                        cus.CheckNumber = withdraw.CheckNumber;
                    }
                    else
                    {
                        var death = entity.CUS_CHANGE_FUND.Where(x => x.CustomerId == cus.CustomerId && x.ChangeType == "death").FirstOrDefault();
                        if (death != null)
                            canArchive = true;
                    }    
                    cus.CanArchive = canArchive;

                    #region FamilyCardHolder
                    var card = entity.CUS_FAMILY_CARD.Where(x => x.CustomerId == cus.CustomerId && x.IsStopped == false).FirstOrDefault();
                    if (card != null)
                        hasFamilyCard = true;
                    cus.FamilyCardHolder = hasFamilyCard;
                    #endregion

                    #region join date
                    TimeSpan span1 = nowDate - (DateTime)cus.JoinDate;
                    cus.JoinYear= (zeroTime + span1).Year - 1;
                    cus.JoinMonth = (zeroTime + span1).Month - 1;
                    cus.JoinDay = (zeroTime + span1).Day;
                    #endregion
                }
                return customers;
            }
        }

        [HttpPost]
        [Route("SearchCustomers")]
        public string SearchCustomers(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            string textSearch = "";

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
                    if (c.Type == "textSearch")
                    {
                        textSearch = c.Value;
                    }
                }

                var customersList = GetCustomers(null, textSearch);
                return TokenManager.GenerateToken(customersList);
            }
        }

        [HttpPost]
        [Route("SearchFamilyCardsCustomers")]
        public string SearchFamilyCardsCustomers(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            string textSearch = "";

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
                    if (c.Type == "textSearch")
                    {
                        textSearch = c.Value;
                    }
                }

                var customersList = GetCustomersCards(null, textSearch);
                return TokenManager.GenerateToken(customersList);
            }
        }
        public List<FamilyCardModel> GetCustomersCards(bool? isActive, string textSearch = "")
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<GEN_CUSTOMER>();
                searchPredicate = searchPredicate.And(x => true);

                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);
                if (textSearch != "")
                {
                    textSearch = textSearch.ToLower();
                    searchPredicate = searchPredicate.And(x => x.IsActive == true);
                    searchPredicate = searchPredicate.And(s => s.BoxNumber.ToString().Contains(textSearch) ||
                    s.Name.ToLower().Contains(textSearch) || s.Family.ToLower().Contains(textSearch)
                     || s.CivilNum.Contains(textSearch)
                     );

                }

                var nowDate = cc.AddOffsetTodate(DateTime.Now);
                var customers =(from x in entity.GEN_CUSTOMER.Where(searchPredicate)
                                join c in entity.CUS_FAMILY_CARD on x.CustomerId equals c.CustomerId
                                select new FamilyCardModel()
                                {
                                    CustomerId = x.CustomerId,
                                    BoxNumber = x.BoxNumber,                                 
                                    CivilNum = x.CivilNum,
                                    CustomerStatus = x.CustomerStatus,  
                                    AutomatedNumber = x.GEN_CUSTOMER_ADDRESS.AutomtedNumber,
                                    CustomerName = x.Name,
                                    FamilyCardId = c.FamilyCardId,
                                    IsStopped = c.IsStopped,
                                    ReleaseDate = c.ReleaseDate,
                                    
                                    Notes = x.Notes,                                  
                                    CreateUserId = x.CreateUserId,
                                    CreateDate = x.CreateDate,
                                    UpdateDate = x.UpdateDate,
                                    UpdateUserId = x.UpdateUserId,                                 

                                    Escorts = entity.CUS_ESCORT.Where(m => m.FamilyCardId == c.FamilyCardId && m.IsActive == true)
                                                .Select(m => new EscortModel()
                                                {
                                                    IsCustomer = m.CustomerId == null? false:true,
                                                    CustomerId = m.CustomerId,
                                                    KinshipId = m.KinshipId,
                                                    AddedDate = m.AddedDate,
                                                    BoxNumber = m.GEN_CUSTOMER.BoxNumber,
                                                    CivilNum = m.GEN_CUSTOMER.CivilNum,
                                                    EscortId = m.EscortId,
                                                    EscortName = m.EscortName,
                                                   
                                                }).ToList(),
                                }).ToList();


                return customers;
            }
        }

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
                string supObject = "";
                GEN_CUSTOMER cusObj = null;
                CustomerModel cusModel = null;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        supObject = c.Value;
                        cusObj = JsonConvert.DeserializeObject<GEN_CUSTOMER>(supObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        cusModel = JsonConvert.DeserializeObject<CustomerModel>(supObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    GEN_CUSTOMER customer;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var cusEntity = entity.Set<GEN_CUSTOMER>();
                        if (cusObj.CustomerId == 0)
                        {
                            cusObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            cusObj.UpdateDate = cusObj.CreateDate;
                            cusObj.UpdateUserId = cusObj.CreateUserId;
                            
                            customer = cusEntity.Add(cusObj);
                        }
                        else
                        {
                            customer = entity.GEN_CUSTOMER.Find(cusObj.CustomerId);
                            customer.Name = cusObj.Name;
                            customer.BoxNumber = cusObj.BoxNumber;
                            customer.Family = cusObj.Family;
                            customer.InvoiceName = cusObj.InvoiceName;
                            customer.CivilNum = cusObj.CivilNum;
                            customer.CustomerStatus = cusObj.CustomerStatus;
                            customer.MemberNature = cusObj.MemberNature;
                            customer.DOB = cusObj.DOB;
                           // customer.BankId = cusObj.BankId;
                           // customer.IBAN = cusObj.IBAN;
                            customer.Gender = cusObj.Gender;
                            customer.MaritalStatus = cusObj.MaritalStatus;
                            customer.JobId = cusObj.JobId;
                            customer.JoinDate = cusObj.JoinDate;
                            customer.SharesCount = cusObj.SharesCount;
                            customer.Notes = cusObj.Notes;
                            customer.ReceiptVoucherDate = cusObj.ReceiptVoucherDate;
                            customer.ReceiptVoucherNumber = cusObj.ReceiptVoucherNumber;
                            customer.SessionNumber = cusObj.SessionNumber;
                            customer.CalculateEarnings = cusObj.CalculateEarnings;
                            customer.DataCompleted = cusObj.DataCompleted;
                            customer.PrintNameOnInv = cusObj.PrintNameOnInv;
                            customer.RegisteredInMinistry = cusObj.RegisteredInMinistry;

                            customer.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            customer.UpdateUserId = cusObj.UpdateUserId;
                        }
                        entity.SaveChanges();
                        cusModel.CustomerId = customer.CustomerId;

                        SaveCustomerAddress(cusModel.customerAddress, customer.CustomerId);
                        SaveCustomerDocuments(cusModel.customerDocuments, customer.CustomerId);
                    }

                    //var supList = GetSuplliers(true);
                    return TokenManager.GenerateToken(cusModel);
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

        public void SaveCustomerAddress(CustomerAddressModel customerAddress, long customerId)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var address = entity.GEN_CUSTOMER_ADDRESS.Find(customerId);
                if (address == null)
                {
                    address = new GEN_CUSTOMER_ADDRESS()
                    {
                        CustomerId = customerId,
                        AreaId = customerAddress.AreaId,
                        AutomtedNumber = customerAddress.AutomtedNumber,
                        AvenueNumber = customerAddress.AvenueNumber,
                        Employer = customerAddress.Employer,
                        Floor = customerAddress.Floor,
                        Guardian = customerAddress.Guardian,
                        HomePhone = customerAddress.HomePhone,
                        HouseNumber = customerAddress.HouseNumber,
                        KinshipId = customerAddress.KinshipId,
                        MailBox = customerAddress.MailBox,
                        MobileNumber = customerAddress.MobileNumber,
                        MobileNumber2 = customerAddress.MobileNumber2,
                        Plot = customerAddress.Plot,
                        PostalCode = customerAddress.PostalCode,
                        SectionId = customerAddress.SectionId,
                        Street = customerAddress.Street,
                        WorkAddress = customerAddress.WorkAddress,
                        WorkPhone = customerAddress.WorkPhone,

                    };
                    entity.GEN_CUSTOMER_ADDRESS.Add(address);

                }
                else
                {
                    address.Street = customerAddress.Street;
                    address.AreaId = customerAddress.AreaId;
                    address.AutomtedNumber = customerAddress.AutomtedNumber;
                    address.AvenueNumber = customerAddress.AvenueNumber;
                    address.Guardian = customerAddress.Guardian;
                    address.PostalCode = customerAddress.PostalCode;
                    address.Employer = customerAddress.Employer;
                    address.Floor = customerAddress.Floor;
                    address.WorkPhone = customerAddress.WorkPhone;
                    address.MobileNumber = customerAddress.MobileNumber;
                    address.MobileNumber2 = customerAddress.MobileNumber2;
                    address.HouseNumber = customerAddress.HouseNumber;
                    address.HomePhone = customerAddress.HomePhone;
                    address.MailBox = customerAddress.MailBox;
                    address.Plot = customerAddress.Plot;
                    address.SectionId = customerAddress.SectionId;
                    address.WorkAddress = customerAddress.WorkAddress;

                }
                entity.SaveChanges();
            }
        }
        public void SaveCustomerDocuments(List<DocumentModel> customerDocuments, long customerId)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                if (customerDocuments != null)
                {
                    var cusDocumnetsIds = customerDocuments.Select(x => x.DocumentId).ToList();
                    #region remove not existed documents

                    var documentsToRemove = entity.GEN_CUSTOMER_DOCUMENT.Where(x => x.CustomerId == customerId
                                && !cusDocumnetsIds.Contains(x.DocumentId)).ToList();

                    foreach (var row in documentsToRemove)
                    {
                        row.IsActive = false;
                        row.UpdateDate = DateTime.Now;
                        row.UpdateUserId = row.UpdateUserId;

                        entity.SaveChanges();
                    }
                    #endregion

                    #region edit existed documents
                    var documentsToEdit = entity.GEN_CUSTOMER_DOCUMENT.Where(x => x.CustomerId == customerId
                                    && cusDocumnetsIds.Contains(x.DocumentId)).ToList();

                    foreach (var row in documentsToEdit)
                    {
                        var sec = customerDocuments.Where(x => x.DocumentId == row.DocumentId).FirstOrDefault();
                        row.DocName = sec.DocName;
                        row.DocTitle = sec.DocTitle;
                        row.UpdateDate = DateTime.Now;
                        row.UpdateUserId = sec.UpdateUserId;
                        entity.SaveChanges();

                    }
                    #endregion

                    #region add new documents
                    var newDocuments = customerDocuments.Where(x => x.DocumentId == 0).ToList();
                    foreach (var row in newDocuments)
                    {
                        var doc = new GEN_CUSTOMER_DOCUMENT()
                        {
                            DocName = row.DocName,
                            DocTitle = row.DocTitle,
                            CustomerId = customerId,
                            IsActive = true,
                            CreateDate = DateTime.Now,
                            UpdateDate = DateTime.Now,
                            CreateUserId = row.CreateUserId,
                            UpdateUserId = row.CreateUserId,

                        };
                        entity.GEN_CUSTOMER_DOCUMENT.Add(doc);

                        long docId = entity.SaveChanges();

                        entity.SaveChanges();
                    }
                    #endregion
                }
                else
                {
                    var documentsToRemove = entity.GEN_CUSTOMER_DOCUMENT.Where(x => x.CustomerId == customerId).ToList();
                    foreach (var row in documentsToRemove)
                    {
                        row.IsActive = false;
                        entity.SaveChanges();
                    }
                }
            }
        }

        [HttpPost]
        [Route("ArchiveCustomer")]
        public string ArchiveCustomer(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                long customerId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "customerId")
                    {
                        customerId = long.Parse(c.Value);
                    }
                    else if (c.Type == "userId")
                    {
                        userId = long.Parse(c.Value);
                    }
                }
                try
                {
                    var nowDate = cc.AddOffsetTodate(DateTime.Now);

                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var rec = entity.GEN_CUSTOMER.Find(customerId);
                        rec.IsArchived = true;
                        rec.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        rec.UpdateUserId = userId;

                        entity.SaveChanges();

                        var customers = entity.GEN_CUSTOMER.Where(x => x.CustomerId == customerId)
                          .Select(x => new CustomerModel()
                          {
                              CustomerId = x.CustomerId,
                              BoxNumber = x.BoxNumber,
                              Name = x.Name,
                              Family = x.Family,
                              InvoiceName = x.InvoiceName,
                              CivilNum = x.CivilNum,
                              CustomerStatus = x.CustomerStatus,
                              MemberNature = x.MemberNature,
                              DOB = x.DOB,
                              BankId = x.BankId,
                              IBAN = x.IBAN,
                              Gender = x.Gender,
                              MaritalStatus = x.MaritalStatus,
                              IsArchived = x.IsArchived,
                              IsActive = x.IsActive,
                              JobId = x.JobId,
                              JoinDate = x.JoinDate,
                              JoiningSharesCount = x.JoiningSharesCount,
                              SharesCount = x.SharesCount,
                              AllStocksCount = x.JoiningSharesCount + x.SharesCount,
                              Notes = x.Notes,
                              ReceiptVoucherDate = x.ReceiptVoucherDate,
                              ReceiptVoucherNumber = x.ReceiptVoucherNumber,
                              SessionNumber = x.SessionNumber,
                              CalculateEarnings = x.CalculateEarnings,
                              DataCompleted = x.DataCompleted,
                              PrintNameOnInv = x.PrintNameOnInv,
                              RegisteredInMinistry = x.RegisteredInMinistry,
                              CreateUserId = x.CreateUserId,
                              CreateDate = x.CreateDate,
                              UpdateDate = x.UpdateDate,
                              UpdateUserId = x.UpdateUserId,
                              CurrentPurchses = entity.SAL_INVOICE.Where(m => m.CustomerId == x.CustomerId
                                                        && m.IsActive == true && m.CreateDate.Value.Year == nowDate.Year)
                                                    .Sum(m => m.TotalNet) == null ? 0 : entity.SAL_INVOICE.Where(m => m.CustomerId == x.CustomerId && m.IsActive == true).Sum(m => m.TotalNet).Value,
                              customerAddress = entity.GEN_CUSTOMER_ADDRESS.Where(m => m.CustomerId == x.CustomerId)
                                                  .Select(m => new CustomerAddressModel()
                                                  {
                                                      AutomtedNumber = m.AutomtedNumber,
                                                      AvenueNumber = m.AvenueNumber,
                                                      Employer = m.Employer,
                                                      Floor = m.Floor,
                                                      AreaId = m.AreaId,
                                                      Guardian = m.Guardian,
                                                      HomePhone = m.HomePhone,
                                                      HouseNumber = m.HouseNumber,
                                                      KinshipId = m.KinshipId,
                                                      MailBox = m.MailBox,
                                                      MobileNumber = m.MobileNumber,
                                                      MobileNumber2 = m.MobileNumber2,
                                                      Plot = m.Plot,
                                                      PostalCode = m.PostalCode,
                                                      SectionId = m.SectionId,
                                                      Street = m.Street,
                                                      WorkAddress = m.WorkAddress,
                                                      WorkPhone = m.WorkPhone
                                                  }).FirstOrDefault(),
                              customerDocuments = entity.GEN_CUSTOMER_DOCUMENT.Where(m => m.CustomerId == x.CustomerId && m.IsActive == true)
                                                  .Select(m => new DocumentModel()
                                                  {
                                                      DocumentId = m.DocumentId,
                                                      DocName = m.DocName,
                                                      DocTitle = m.DocTitle,
                                                  }).ToList(),
                          }).FirstOrDefault();

                        return TokenManager.GenerateToken(customers);
                    }
                }
                catch
                {
                    return TokenManager.GenerateToken("0");
                }
            }
        }

        //[HttpPost]
        //[Route("GetMaxFundNum")]
        //public string GetMaxFundNum(string token)
        //{
        //    token = TokenManager.readToken(HttpContext.Current.Request);

        //    var strP = TokenManager.GetPrincipal(token);
        //    if (strP != "0") //invalid authorization
        //    {
        //        return TokenManager.GenerateToken(strP);
        //    }
        //    else
        //    {

        //        using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
        //        {
        //            long maxId = 1;
        //            var fundNums = entity.GEN_CUSTOMER.Select(x=> x.BoxNumber).ToList();
        //            long counter = fundNums.Count() > 0 ? (long)fundNums.First() : 0;

        //            while (counter < int.MaxValue)
        //            {
        //                if (!fundNums.Contains(++counter)) 
        //                {
        //                    maxId = counter;
        //                    break;
        //                }
        //            }

        //            return TokenManager.GenerateToken(maxId.ToString());

        //        }
        //    }
        //} 
        
        [HttpPost]
        [Route("GetMaxCustomerId")]
        public string GetMaxCustomerId(string token)
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
                    long maxId = 1;
                    var fundNums = entity.GEN_CUSTOMER.Select(x=> x.CustomerId).ToList();
                    long counter = fundNums.Count() > 0 ? (long)fundNums.First() : 0;

                    while (counter < int.MaxValue)
                    {
                        if (!fundNums.Contains(++counter)) 
                        {
                            maxId = counter;
                            break;
                        }
                    }

                    return TokenManager.GenerateToken(maxId.ToString());

                }
            }
        }
        
        [HttpPost]
        [Route("GetMaxFamilyCardId")]
        public string GetMaxFamilyCardId(string token)
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

                        long maxId = 0;
                        var item = entity.CUS_FAMILY_CARD.Count();
                        if (item > 0)
                            maxId = entity.CUS_FAMILY_CARD.Select(x => x.FamilyCardId).Max();
                        maxId++;

                        return TokenManager.GenerateToken(maxId.ToString());

                }
            }
        }
        [HttpPost]
        [Route("CheckBoxNumber")]
        public string CheckBoxNumber(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                long fundNumber = 0;
                long customerId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "fundNumber")
                    {
                        fundNumber = long.Parse(c.Value);
                    } 
                    else if (c.Type == "customerId")
                    {
                        customerId = long.Parse(c.Value);
                    }
                }

                try
                {
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        bool isValid = false;

                        var cus = entity.GEN_CUSTOMER.Where(x => x.BoxNumber == fundNumber && x.CustomerId != customerId 
                                                           && x.IsArchived == false && x.IsActive == true ).FirstOrDefault();
                        if (cus == null)
                            isValid = true;
                        return TokenManager.GenerateToken(isValid.ToString());
                    }
                }
                catch
                {
                    return TokenManager.GenerateToken("false");
                }
            }
        }

        [HttpPost]
        [Route("GetById")]
        public string GetById(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                long customerId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "customerId")
                    {
                        customerId = long.Parse(c.Value);
                    }
                }
                try
                {
                    var nowDate = cc.AddOffsetTodate(DateTime.Now);

                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {

                        var customer = entity.GEN_CUSTOMER.Where(x => x.CustomerId == customerId && x.IsArchived == false)
                          .Select(x => new CustomerModel()
                          {
                              CustomerId = x.CustomerId,
                              BoxNumber = x.BoxNumber,
                              Name = x.Name,
                              Family = x.Family,
                              InvoiceName = x.InvoiceName,
                              CivilNum = x.CivilNum,
                              CustomerStatus = x.CustomerStatus,
                              MemberNature = x.MemberNature,
                              DOB = x.DOB,
                              BankId = x.BankId,
                              IBAN = x.IBAN,
                              Gender = x.Gender,
                              MaritalStatus = x.MaritalStatus,
                              IsArchived = x.IsArchived,
                              IsActive = x.IsActive,
                              JobId = x.JobId,
                              JoinDate = x.JoinDate,
                              JoiningSharesCount = x.JoiningSharesCount,
                              SharesCount = x.SharesCount,
                              AllStocksCount = x.JoiningSharesCount + x.SharesCount,
                              Notes = x.Notes,
                              ReceiptVoucherDate = x.ReceiptVoucherDate,
                              ReceiptVoucherNumber = x.ReceiptVoucherNumber,
                              SessionNumber = x.SessionNumber,
                              CalculateEarnings = x.CalculateEarnings,
                              DataCompleted = x.DataCompleted,
                              PrintNameOnInv = x.PrintNameOnInv,
                              RegisteredInMinistry = x.RegisteredInMinistry,
                              CreateUserId = x.CreateUserId,
                              CreateDate = x.CreateDate,
                              UpdateDate = x.UpdateDate,
                              UpdateUserId = x.UpdateUserId,
                              CurrentPurchses = entity.SAL_INVOICE.Where(m => m.CustomerId == x.CustomerId
                                                     && m.IsActive == true && m.CreateDate.Value.Year == nowDate.Year)
                                                    .Sum(m => m.TotalNet) == null ? 0 : entity.SAL_INVOICE.Where(m => m.CustomerId == x.CustomerId && m.IsActive == true).Sum(m => m.TotalNet).Value,
                              customerAddress = entity.GEN_CUSTOMER_ADDRESS.Where(m => m.CustomerId == x.CustomerId)
                                                  .Select(m => new CustomerAddressModel()
                                                  {
                                                      AutomtedNumber = m.AutomtedNumber,
                                                      AvenueNumber = m.AvenueNumber,
                                                      Employer = m.Employer,
                                                      Floor = m.Floor,
                                                      AreaId = m.AreaId,
                                                      Guardian = m.Guardian,
                                                      HomePhone = m.HomePhone,
                                                      HouseNumber = m.HouseNumber,
                                                      KinshipId = m.KinshipId,
                                                      MailBox = m.MailBox,
                                                      MobileNumber = m.MobileNumber,
                                                      MobileNumber2 = m.MobileNumber2,
                                                      Plot = m.Plot,
                                                      PostalCode = m.PostalCode,
                                                      SectionId = m.SectionId,
                                                      Street = m.Street,
                                                      WorkAddress = m.WorkAddress,
                                                      WorkPhone = m.WorkPhone
                                                  }).FirstOrDefault(),
                              customerDocuments = entity.GEN_CUSTOMER_DOCUMENT.Where(m => m.CustomerId == x.CustomerId && m.IsActive == true)
                                                  .Select(m => new DocumentModel()
                                                  {
                                                      DocumentId = m.DocumentId,
                                                      DocName = m.DocName,
                                                      DocTitle = m.DocTitle,
                                                  }).ToList(),
                          }).FirstOrDefault();

                        if (customer != null)
                        {
                            bool canArchive = false;
                            DateTime zeroTime = new DateTime(1, 1, 1);

                            var withdraw = entity.CUS_CHANGE_FUND.Where(x => x.CustomerId == customer.CustomerId && x.ChangeType == "withdraw").FirstOrDefault();
                            if (withdraw != null)
                            {
                                var withdrawDate = withdraw.ChangeDate;

                                TimeSpan span = nowDate - (DateTime)withdrawDate;
                                // Because we start at year 1 for the Gregorian
                                // calendar, we must subtract a year here.
                                int years = (zeroTime + span).Year - 1;
                                if (years >= 2)
                                    canArchive = true;
                            }
                            customer.CanArchive = canArchive;

                            #region join date
                            TimeSpan span1 = nowDate - (DateTime)customer.JoinDate;
                            customer.JoinYear = (zeroTime + span1).Year - 1;
                            customer.JoinMonth = (zeroTime + span1).Month - 1;
                            customer.JoinDay = (zeroTime + span1).Day;
                            #endregion
                        }
                        return TokenManager.GenerateToken(customer);
                    }
                }
                catch
                {
                    return TokenManager.GenerateToken("0");
                }
            }
        }

        [HttpPost]
        [Route("GetFamilyCardById")]
        public string GetFamilyCardById(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                long customerId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "customerId")
                    {
                        customerId = long.Parse(c.Value);
                    }
                }
                try
                {
                    var nowDate = cc.AddOffsetTodate(DateTime.Now);

                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {

                        var customer =(from x in  entity.GEN_CUSTOMER.Where(x => x.CustomerId == customerId && x.IsArchived == false)
                                       join c in entity.CUS_FAMILY_CARD on x.CustomerId equals c.CustomerId into cards
                                       from card in cards.DefaultIfEmpty()
                                       select  new FamilyCardModel()
                                       {
                                           CustomerId = x.CustomerId,
                                           BoxNumber = x.BoxNumber,
                                           CustomerName = x.Name,
                                            AutomatedNumber = x.GEN_CUSTOMER_ADDRESS.AutomtedNumber,
                                            FamilyCardId = card.FamilyCardId,
                                           CivilNum = x.CivilNum,
                                           CustomerStatus = x.CustomerStatus,
                                           IsStopped = card.IsStopped,
                                           ReleaseDate = card.ReleaseDate,
                                           Notes = x.Notes,                                         
                                           CreateUserId = x.CreateUserId,
                                           CreateDate = x.CreateDate,
                                           UpdateDate = x.UpdateDate,
                                           UpdateUserId = x.UpdateUserId,
                                          Escorts = entity.CUS_ESCORT.Where(m=> m.CustomerId == x.CustomerId && m.IsActive == true)
                                                    .Select(m=> new EscortModel()
                                                    {
                                                        BoxNumber = m.GEN_CUSTOMER.BoxNumber,
                                                        AddedDate=m.AddedDate,
                                                        CustomerId = m.CustomerId,
                                                        CivilNum = m.CivilNum,
                                                        EscortId = m.EscortId,
                                                        EscortName = m.EscortName,
                                                        IsActive = m.IsActive,
                                                        IsCustomer = m.CustomerId == null? false :true,
                                                        KinshipId = m.KinshipId,
                                                        FamilyCardId = m.FamilyCardId,
                                                    }).ToList(),
                                       }).FirstOrDefault();

                        
                        return TokenManager.GenerateToken(customer);
                    }
                }
                catch
                {
                    return TokenManager.GenerateToken("0");
                }
            }
        }


        [HttpPost]
        [Route("GetFamilyCardByBoxNumber")]
        public string GetFamilyCardByBoxNumber(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                long boxNumber = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "boxNumber")
                    {
                        boxNumber = long.Parse(c.Value);
                    }
                }
                try
                {
                    var nowDate = cc.AddOffsetTodate(DateTime.Now);

                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {

                        var customer =(from x in  entity.GEN_CUSTOMER.Where(x => x.BoxNumber == boxNumber && x.IsArchived == false)
                                       join c in entity.CUS_FAMILY_CARD on x.CustomerId equals c.CustomerId into cards
                                       from card in cards.DefaultIfEmpty()
                                       select  new FamilyCardModel()
                                       {
                                           CustomerId = x.CustomerId,
                                           BoxNumber = x.BoxNumber,
                                           CustomerName = x.Name,
                                            AutomatedNumber = x.GEN_CUSTOMER_ADDRESS.AutomtedNumber,
                                            FamilyCardId = card.FamilyCardId,
                                           CivilNum = x.CivilNum,
                                           CustomerStatus = x.CustomerStatus,
                                           IsStopped = card.IsStopped,
                                           ReleaseDate = card.ReleaseDate,
                                           Notes = x.Notes,                                         
                                           CreateUserId = x.CreateUserId,
                                           CreateDate = x.CreateDate,
                                           UpdateDate = x.UpdateDate,
                                           UpdateUserId = x.UpdateUserId,
                                          Escorts = entity.CUS_ESCORT.Where(m=> m.CustomerId == x.CustomerId && m.IsActive == true)
                                                    .Select(m=> new EscortModel()
                                                    {
                                                        BoxNumber = m.GEN_CUSTOMER.BoxNumber,
                                                        AddedDate=m.AddedDate,
                                                        CustomerId = m.CustomerId,
                                                        CivilNum = m.CivilNum,
                                                        EscortId = m.EscortId,
                                                        EscortName = m.EscortName,
                                                        IsActive = m.IsActive,
                                                        IsCustomer = m.CustomerId == null? false :true,
                                                        KinshipId = m.KinshipId,
                                                        FamilyCardId = m.FamilyCardId,
                                                    }).ToList(),
                                       }).FirstOrDefault();

                        
                        return TokenManager.GenerateToken(customer);
                    }
                }
                catch
                {
                    return TokenManager.GenerateToken("0");
                }
            }
        }


       [HttpPost]
        [Route("GetByBoxNumber")]
        public string GetByBoxNumber(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                long boxNumber = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "boxNumber")
                    {
                        boxNumber = long.Parse(c.Value);
                    }
                }
                try
                {
                    var nowDate = cc.AddOffsetTodate(DateTime.Now);

                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {

                        var customer = entity.GEN_CUSTOMER.Where(x => x.BoxNumber == boxNumber && x.IsArchived == false)
                          .Select(x => new CustomerModel()
                          {
                              CustomerId = x.CustomerId,
                              BoxNumber = x.BoxNumber,
                              Name = x.Name,
                              Family = x.Family,
                              InvoiceName = x.InvoiceName,
                              CivilNum = x.CivilNum,
                              CustomerStatus = x.CustomerStatus,
                              MemberNature = x.MemberNature,
                              DOB = x.DOB,
                              BankId = x.BankId,
                              IBAN = x.IBAN,
                              Gender = x.Gender,
                              MaritalStatus = x.MaritalStatus,
                              IsArchived = x.IsArchived,
                              IsActive = x.IsActive,
                              JobId = x.JobId,
                              JoinDate = x.JoinDate,
                              JoiningSharesCount = x.JoiningSharesCount,
                              SharesCount = x.SharesCount,
                              AllStocksCount = x.JoiningSharesCount + x.SharesCount,
                              Notes = x.Notes,
                              ReceiptVoucherDate = x.ReceiptVoucherDate,
                              ReceiptVoucherNumber = x.ReceiptVoucherNumber,
                              SessionNumber = x.SessionNumber,
                              CalculateEarnings = x.CalculateEarnings,
                              DataCompleted = x.DataCompleted,
                              PrintNameOnInv = x.PrintNameOnInv,
                              RegisteredInMinistry = x.RegisteredInMinistry,
                              CreateUserId = x.CreateUserId,
                              CreateDate = x.CreateDate,
                              UpdateDate = x.UpdateDate,
                              UpdateUserId = x.UpdateUserId,
                              CurrentPurchses = entity.SAL_INVOICE.Where(m => m.CustomerId == x.CustomerId
                                                     && m.IsActive == true && m.CreateDate.Value.Year == nowDate.Year)
                                                    .Sum(m => m.TotalNet) == null ? 0 : entity.SAL_INVOICE.Where(m => m.CustomerId == x.CustomerId && m.IsActive == true).Sum(m => m.TotalNet).Value,
                              customerAddress = entity.GEN_CUSTOMER_ADDRESS.Where(m => m.CustomerId == x.CustomerId)
                                                  .Select(m => new CustomerAddressModel()
                                                  {
                                                      AutomtedNumber = m.AutomtedNumber,
                                                      AvenueNumber = m.AvenueNumber,
                                                      Employer = m.Employer,
                                                      Floor = m.Floor,
                                                      AreaId = m.AreaId,
                                                      Guardian = m.Guardian,
                                                      HomePhone = m.HomePhone,
                                                      HouseNumber = m.HouseNumber,
                                                      KinshipId = m.KinshipId,
                                                      MailBox = m.MailBox,
                                                      MobileNumber = m.MobileNumber,
                                                      MobileNumber2 = m.MobileNumber2,
                                                      Plot = m.Plot,
                                                      PostalCode = m.PostalCode,
                                                      SectionId = m.SectionId,
                                                      Street = m.Street,
                                                      WorkAddress = m.WorkAddress,
                                                      WorkPhone = m.WorkPhone
                                                  }).FirstOrDefault(),
                              customerDocuments = entity.GEN_CUSTOMER_DOCUMENT.Where(m => m.CustomerId == x.CustomerId && m.IsActive == true)
                                                  .Select(m => new DocumentModel()
                                                  {
                                                      DocumentId = m.DocumentId,
                                                      DocName = m.DocName,
                                                      DocTitle = m.DocTitle,
                                                  }).ToList(),
                          }).FirstOrDefault();

                        if (customer != null)
                        {
                            bool canArchive = false;
                            DateTime zeroTime = new DateTime(1, 1, 1);

                            var withdraw = entity.CUS_CHANGE_FUND.Where(x => x.CustomerId == customer.CustomerId && x.ChangeType == "withdraw").FirstOrDefault();
                            if (withdraw != null)
                            {
                                var withdrawDate = withdraw.ChangeDate;

                                TimeSpan span = nowDate - (DateTime)withdrawDate;
                                // Because we start at year 1 for the Gregorian
                                // calendar, we must subtract a year here.
                                int years = (zeroTime + span).Year - 1;
                                if (years >= 2)
                                    canArchive = true;
                            }
                            customer.CanArchive = canArchive;

                            #region join date
                            TimeSpan span1 = nowDate - (DateTime)customer.JoinDate;
                            customer.JoinYear = (zeroTime + span1).Year - 1;
                            customer.JoinMonth = (zeroTime + span1).Month - 1;
                            customer.JoinDay = (zeroTime + span1).Day;
                            #endregion
                        }
                        return TokenManager.GenerateToken(customer);
                    }
                }
                catch
                {
                    return TokenManager.GenerateToken("0");
                }
            }
        }

        [Route("PostDocument")]
        public IHttpActionResult PostDocument()
        {

            // try
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
                        var dir = System.Web.Hosting.HostingEnvironment.MapPath("~\\documents\\customer");
                        if (!Directory.Exists(dir))
                            Directory.CreateDirectory(dir);
                        //  check if image exist
                        var pathCheck = Path.Combine(System.Web.Hosting.HostingEnvironment.MapPath("~\\documents\\customer"), imageWithNoExt);
                        var files = Directory.GetFiles(System.Web.Hosting.HostingEnvironment.MapPath("~\\documents\\customer"), imageWithNoExt + ".*");
                        if (files.Length > 0)
                        {
                            File.Delete(files[0]);
                        }

                        //Userimage myfolder name where i want to save my image
                        var filePath = Path.Combine(System.Web.Hosting.HostingEnvironment.MapPath("~\\documents\\customer"), imageName);
                        postedFile.SaveAs(filePath);


                    }

                    var message1 = string.Format("Document Updated Successfully.");
                    return Ok(message1);
                }
                var res = string.Format("Please Upload a document.");

                return Ok(res);
            }
        }

        [HttpPost]
        [Route("downloadDocument")]
        public string downloadDocument(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                string documentName = "";
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "documentName")
                    {
                        documentName = c.Value;
                    }
                }
                if (String.IsNullOrEmpty(documentName))
                    return TokenManager.GenerateToken("0");

                string localFilePath;

                try
                {
                    localFilePath = Path.Combine(System.Web.Hosting.HostingEnvironment.MapPath("~\\documents\\customer"), documentName);

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
        [Route("SaveFamilyCard")]
        public string SaveFamilyCard(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                string supObject = "";
                CUS_FAMILY_CARD cardObj = null;
                FamilyCardModel cardModel = null;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        supObject = c.Value;
                        cardObj = JsonConvert.DeserializeObject<CUS_FAMILY_CARD>(supObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        cardModel = JsonConvert.DeserializeObject<FamilyCardModel>(supObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    CUS_FAMILY_CARD card;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var cardEntity = entity.Set<CUS_FAMILY_CARD>();
                        if (cardObj.FamilyCardId == 0)
                        {
                            cardObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            cardObj.UpdateDate = cardObj.CreateDate;
                            cardObj.UpdateUserId = cardObj.CreateUserId;

                            card = cardEntity.Add(cardObj);
                        }
                        else
                        {
                            card = entity.CUS_FAMILY_CARD.Find(cardObj.FamilyCardId);
                            card.IsStopped = cardObj.IsStopped;
                            card.ReleaseDate = cardObj.ReleaseDate;

                            card.Notes = cardObj.Notes;
                            card.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            card.UpdateUserId = cardObj.UpdateUserId;
                        }
                        entity.SaveChanges();
                        cardModel.FamilyCardId = card.FamilyCardId;

                        SaveCustomerEscorts(cardModel.Escorts, card.FamilyCardId);
                    }

                    //var supList = GetSuplliers(true);
                    return TokenManager.GenerateToken(cardModel);
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

        public void SaveCustomerEscorts(List<EscortModel> customerEscorts, long familyCardId)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                if (customerEscorts != null)
                {
                    var cusEscortIds = customerEscorts.Select(x => x.EscortId).ToList();
                    #region remove not existed escorts

                    var escortsToRemove = entity.CUS_ESCORT.Where(x => x.FamilyCardId == familyCardId
                                && !cusEscortIds.Contains(x.EscortId)).ToList();

                    foreach (var row in escortsToRemove)
                    {
                        row.IsActive = false;
                        row.UpdateDate = DateTime.Now;
                        row.UpdateUserId = row.UpdateUserId;

                        entity.SaveChanges();
                    }
                    #endregion

                    #region edit existed escorts
                    var escortsToEdit = entity.CUS_ESCORT.Where(x => x.FamilyCardId == familyCardId
                                    && cusEscortIds.Contains(x.EscortId)).ToList();

                    foreach (var row in escortsToEdit)
                    {
                        var esc = customerEscorts.Where(x => x.EscortId == row.EscortId).FirstOrDefault();
                        row.AddedDate = esc.AddedDate;
                        row.KinshipId = esc.KinshipId;
                        row.CustomerId = esc.CustomerId;
                        row.CivilNum = esc.CivilNum;
                        row.EscortName = esc.EscortName;

                        row.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        row.UpdateUserId = esc.UpdateUserId;
                        entity.SaveChanges();

                    }
                    #endregion

                    #region add new escorts
                    var newEscorts = customerEscorts.Where(x => x.EscortId == 0).ToList();
                    foreach (var row in newEscorts)
                    {
                        var doc = new CUS_ESCORT()
                        {
                            FamilyCardId = familyCardId,
                            AddedDate = row.AddedDate,
                            CustomerId = row.CustomerId,
                            KinshipId = row.KinshipId,
                            CivilNum = row.CivilNum,
                            EscortName = row.EscortName,                            
                            IsActive = true,
                            CreateDate = cc.AddOffsetTodate(DateTime.Now),
                            UpdateDate = cc.AddOffsetTodate(DateTime.Now),
                            CreateUserId = row.CreateUserId,
                            UpdateUserId = row.CreateUserId,

                        };
                        entity.CUS_ESCORT.Add(doc);

                        long escortId = entity.SaveChanges();

                        entity.SaveChanges();
                    }
                    #endregion
                }
                else
                {
                    var escortsToRemove = entity.CUS_ESCORT.Where(x => x.FamilyCardId == familyCardId).ToList();
                    foreach (var row in escortsToRemove)
                    {
                        row.IsActive = false;
                        entity.SaveChanges();
                    }
                }
            }
        }
    }
}