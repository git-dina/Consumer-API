using LinqKit;
using POS_Server.Models;
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
    [RoutePrefix("api/Purchase")]
    public class PurchaseController : ApiController
    {
        CountriesController cc = new CountriesController();

        [HttpPost]
        [Route("Get")]
        public string Get(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            string invType = "";

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
                    if (c.Type == "invType")
                    {
                        if (c.Value != "")
                            invType = c.Value;
                    }
                }

                var invoicesList = GetPurchaseInv(invType);
                return TokenManager.GenerateToken(invoicesList);
            }
        }

        public List<PurchaseInvModel> GetPurchaseInv(string invType)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<PUR_PURCHASE_INV>();
                searchPredicate = searchPredicate.And(x => true);
                if (invType != "")
                    searchPredicate = searchPredicate.And(x => x.InvType == invType);

                var invList = entity.PUR_PURCHASE_INV
                                    .Where(searchPredicate)
                                .Select(p => new PurchaseInvModel
                                {
                                    PurchaseId = p.PurchaseId,
                                    LocationId = p.LocationId,
                                    LocationName = p.GEN_LOCATION.Name,
                                    SupId = p.SupId,
                                    InvNumber = p.InvNumber,
                                    InvStatus = p.InvStatus,
                                    OrderDate = p.OrderDate,
                                    OrderRecieveDate = p.OrderRecieveDate,

                                    ConsumerDiscount = p.ConsumerDiscount,
                                    CoopDiscount = p.CoopDiscount,
                                    CostAfterDiscount = p.CostAfterDiscount,
                                    FreePercentage = p.FreePercentage,
                                    CostNet = p.CostNet,
                                    TotalCost = p.TotalCost,
                                    TotalPrice = p.TotalPrice,

                                    Notes = p.Notes,
                                    SupplierNotes = p.SupplierNotes,
                                    SupplierPurchaseNotes = p.SupplierPurchaseNotes,

                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,

                                    PurchaseDetails = entity.PUR_PURCHASE_INV_DETAILS.Where(x => x.PurchaseId == p.PurchaseId && x.IsActive == true)
                                                        .Select(x => new PurchaseInvDetailsModel()
                                                        {
                                                            DetailsId = x.DetailsId,
                                                            ItemId = x.ItemId,
                                                            ItemCode = x.ItemCode,
                                                            ItemNotes = x.ItemNotes,
                                                            Factor = x.Factor,
                                                            Barcode = x.Barcode,
                                                            Balance = x.Balance,
                                                            MainCost = x.MainCost,
                                                            MainPrice = x.MainPrice,
                                                            Cost = x.Cost,
                                                            Price = x.Price,
                                                            MaxQty = x.MaxQty,
                                                            MinQty = x.MinQty,
                                                            ConsumerDiscount = x.ConsumerDiscount,
                                                            CoopDiscount = x.CoopDiscount,
                                                            FreeQty = x.FreeQty,
                                                            
                                                        }).ToList()
                                }).ToList();

                return invList;
            }
        }
    }
}