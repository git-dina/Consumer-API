using LinqKit;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using POS_Server.Models;
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
    [RoutePrefix("api/CustomerTransaction")]

    public class CustomerTransactionController : ApiController
    {
        CountriesController cc = new CountriesController();
        // GET api/<controller>
        [HttpPost]
        [Route("AddStocks")]
        public async Task<string> AddStocks(string token)
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
                CUS_TRANSACTION transaction = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        jsonObject = c.Value;
                        transaction = JsonConvert.DeserializeObject<CUS_TRANSACTION>(jsonObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {

                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        transaction.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                        transaction.UpdateDate = transaction.CreateDate;
                        transaction.UpdateUserId = transaction.CreateUserId;

                        entity.CUS_TRANSACTION.Add(transaction);

                        var customer = entity.GEN_CUSTOMER.Find(transaction.CustomerId);
                        customer.SharesCount += (int)transaction.TransactionStocksCount;

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
        [Route("ReduceStocks")]
        public async Task<string> ReduceStocks(string token)
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
                CUS_TRANSACTION transaction = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        jsonObject = c.Value;
                        transaction = JsonConvert.DeserializeObject<CUS_TRANSACTION>(jsonObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {

                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        transaction.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                        transaction.UpdateDate = transaction.CreateDate;
                        transaction.UpdateUserId = transaction.CreateUserId;

                        entity.CUS_TRANSACTION.Add(transaction);

                        var customer = entity.GEN_CUSTOMER.Find(transaction.CustomerId);
                        customer.SharesCount -= (int)transaction.TransactionStocksCount;

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
        [Route("RetreatTransaction")]
        public async Task<string> RetreatTransaction(string token)
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
                CUS_TRANSACTION transaction = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        jsonObject = c.Value;
                        transaction = JsonConvert.DeserializeObject<CUS_TRANSACTION>(jsonObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {

                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        transaction.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                        transaction.UpdateDate = transaction.CreateDate;
                        transaction.UpdateUserId = transaction.CreateUserId;

                        entity.CUS_TRANSACTION.Add(transaction);

                        var customer = entity.GEN_CUSTOMER.Find(transaction.CustomerId);
                        customer.SharesCount = 0;
                        customer.CustomerStatus = "withdrawn";
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
        [Route("DeathTransaction")]
        public async Task<string> DeathTransaction(string token)
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
                CUS_TRANSACTION transaction = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        jsonObject = c.Value;
                        transaction = JsonConvert.DeserializeObject<CUS_TRANSACTION>(jsonObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {

                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        transaction.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                        transaction.UpdateDate = transaction.CreateDate;
                        transaction.UpdateUserId = transaction.CreateUserId;

                        entity.CUS_TRANSACTION.Add(transaction);

                        var customer = entity.GEN_CUSTOMER.Find(transaction.CustomerId);
                        customer.SharesCount = 0;
                        customer.CustomerStatus = "dead";
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
        [Route("TransformStocks")]
        public async Task<string> TransformStocks(string token)
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
                CUS_TRANSACTION transaction = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        jsonObject = c.Value;
                        transaction = JsonConvert.DeserializeObject<CUS_TRANSACTION>(jsonObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {

                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        transaction.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                        transaction.UpdateDate = transaction.CreateDate;
                        transaction.UpdateUserId = transaction.CreateUserId;

                        entity.CUS_TRANSACTION.Add(transaction);

                        var customer = entity.GEN_CUSTOMER.Find(transaction.CustomerId);
                        customer.SharesCount -= (int)transaction.TransactionStocksCount;

                        var toCustomer = entity.GEN_CUSTOMER.Find(transaction.ToCustomerId);
                        toCustomer.SharesCount += (int)transaction.TransactionStocksCount;
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
        [Route("SearchTransactions")]
        public string SearchTransactions(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            string textSearch = "";
            string transactionType = "";

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
                    else if (c.Type == "transactionType")
                    {
                        transactionType = c.Value;
                    }
                }

                var transactionsList = GetTransactions(null, transactionType, textSearch);
                return TokenManager.GenerateToken(transactionsList);
            }
        }

        public List<TransactionModel> GetTransactions(bool? isActive,string transactionType="", string textSearch = "")
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<CUS_TRANSACTION>();
                searchPredicate = searchPredicate.And(x => x.TransactionType.ToLower() == transactionType.ToLower());

                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);
                if (textSearch != "")
                {
                    textSearch = textSearch.ToLower();
                    searchPredicate = searchPredicate.And(x => x.IsActive == true);
                    searchPredicate = searchPredicate.And(s => s.CustomerId.ToString().Contains(textSearch) ||
                    s.GEN_CUSTOMER.Name.ToLower().Contains(textSearch) || s.GEN_CUSTOMER.Family.ToLower().Contains(textSearch)
                     || s.GEN_CUSTOMER.CivilNum.Contains(textSearch)
                     );

                }

                var nowDate = cc.AddOffsetTodate(DateTime.Now);
                var transactions = entity.CUS_TRANSACTION.Where(searchPredicate)
                            .Select(x => new TransactionModel()
                            {
                                CustomerId = x.CustomerId,
                                BoxNumber = x.BoxNumber,
                                CheckDate = x.CheckDate,
                                BondNo = x.BondNo,
                                BondDate = x.BondDate,
                                ApprovalNumber = x.ApprovalNumber,
                                CheckNumber = x.CheckNumber,
                                CustomerName = x.GEN_CUSTOMER.Name,
                                TransactionStocksCount = x.TransactionStocksCount,
                                StocksCount=x.StocksCount,
                                ToStocksCount = x.ToStocksCount,
                                MeetingDate = x.MeetingDate,
                                StocksPrice = x.StocksPrice,
                                ToBoxNumber = x.ToBoxNumber,
                                ToCustomerId = x.ToCustomerId,
                                ToCustomerName = entity.GEN_CUSTOMER.Where(m => m.CustomerId == x.ToCustomerId).Select(m => m.Name).FirstOrDefault(),
                                TransactionDate = x.TransactionDate,
                                TransactionId = x.TransactionId,
                                IsActive = x.IsActive,
                                JoinDate = x.GEN_CUSTOMER.JoinDate,
                                Notes = x.Notes,                              
                                CreateUserId = x.CreateUserId,
                                CreateDate = x.CreateDate,
                                UpdateDate = x.UpdateDate,
                                UpdateUserId = x.UpdateUserId,
                              
                            }).ToList();

               
                return transactions;
            }
        }
    }
}