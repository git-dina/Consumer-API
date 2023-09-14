using LinqKit;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
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
                    var appObjectList = entity.USR_APP_OBJECT.Select(x => new AppObjectModel()
                    {
                        AppObjectId = x.AppObjectId,
                        Name = x.Name,
                        NameAr = x.NameAr,
                        NameEn = x.NameEn,
                    }).ToList();
                    return TokenManager.GenerateToken(appObjectList);
                }
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
                string Object = "";
                USR_ROLE roleObj = null;
                RoleModel roleModel = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value;
                        roleObj = JsonConvert.DeserializeObject<USR_ROLE>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        roleModel = JsonConvert.DeserializeObject<RoleModel>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    USR_ROLE role;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var roleEntity = entity.Set<USR_ROLE>();
                        if (roleObj.RoleId == 0)
                        {
                            roleObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            roleObj.UpdateDate = roleObj.CreateDate;
                            roleObj.UpdateUserId = roleObj.CreateUserId;
                            roleObj.IsActive = true;

                            role = roleEntity.Add(roleObj);
                        }
                        else
                        {
                            role = entity.USR_ROLE.Find(roleObj.RoleId);
                            role.NameAr = roleObj.NameAr;
                            role.NameEn = roleObj.NameEn;
                            role.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            role.UpdateUserId = roleObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                        if(roleModel.Permissions != null)
                        SaveRolePermissions(roleModel.Permissions, role.RoleId, (long)roleObj.UpdateUserId);
                    }

                    var lst = GetRolesList(true);
                    return TokenManager.GenerateToken(lst);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);

                }
            }
        }

        public void SaveRolePermissions(List<PermissionsModel> permissions, long roleId,long userId)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {

                if (permissions != null)
                {
                    var permissionIds = permissions.Select(x => x.RolesPermissionId).ToList();


                    #region edit existed permissions
                    var perToEdit = entity.USR_ROLE_PERMISSION.Where(x => x.RoleId == roleId
                                    && permissionIds.Contains(x.RolesPermissionId)).ToList();

                    foreach (var row in perToEdit)
                    {
                        var sec = permissions.Where(x => x.RolesPermissionId == row.RolesPermissionId).FirstOrDefault();
                        row.ApproveObject = sec.ApproveObject;
                        row.ViewObject = sec.ViewObject;
                        row.EditObject = sec.EditObject;
                        row.Notes = sec.Notes;
                        
                        row.UpdateDate = DateTime.Now;
                        row.UpdateUserId = userId;
                        entity.SaveChanges();
                    }
                    #endregion


                    #region add new permissions
                    var newPermissions = permissions.Where(x => x.RolesPermissionId == 0).ToList();
                    foreach (var row in newPermissions)
                    {
                        var sec = new USR_ROLE_PERMISSION()
                        {
                            EditObject = row.EditObject,
                            ApproveObject = row.ApproveObject,
                            ViewObject = row.ViewObject,
                            IsActive = true,
                            AppObjectId = row.AppObjectId,
                            Notes = row.Notes,
                            RoleId = roleId,
                            CreateDate = DateTime.Now,
                            UpdateDate = DateTime.Now,
                            CreateUserId = userId,
                            UpdateUserId = userId,

                        };
                        entity.USR_ROLE_PERMISSION.Add(sec);


                        entity.SaveChanges();
                    }
                    #endregion


                }
               
            }

        }
        public List<RoleModel> GetRolesList(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<USR_ROLE>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var usersList = entity.USR_ROLE
                                    .Where(searchPredicate)
                                .Select(p => new RoleModel
                                {
                                    NameAr = p.NameAr,
                                    NameEn = p.NameEn,
                                    RoleID= p.RoleId,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                    Permissions = entity.USR_ROLE_PERMISSION.Where(x => x.RoleId == p.RoleId && x.IsActive ==true)
                                                    .Select( x => new PermissionsModel()
                                                    {
                                                        RolesPermissionId = x.RolesPermissionId,
                                                        RoleId = x.RoleId,
                                                        ViewObject=x.ViewObject,
                                                        ApproveObject=x.ApproveObject, 
                                                        EditObject = x.EditObject,
                                                        Notes = x.Notes,
                                                        AppObjectId = x.AppObjectId,
                                                        AppObject = x.USR_APP_OBJECT.Name,
                                                        CreateDate= x.CreateDate,
                                                        UpdateDate = x.UpdateDate,
                                                        UpdateUserId = x.UpdateUserId,
                                                        CreateUserId = x.CreateUserId,
                                                        NameAr = x.USR_APP_OBJECT.NameAr,
                                                        NameEn = x.USR_APP_OBJECT.NameEn,
                                                    } ).ToList(),
                                }).ToList();


                return usersList;
            }
        }

        [HttpPost]
        [Route("GetRoles")]
        public string GetRoles(string token)
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

                var lst = GetRolesList(isActive);
                return TokenManager.GenerateToken(lst);
            }
        }

        [HttpPost]
        [Route("DeleteRole")]
        public string DeleteRole(string token)
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
                long roleId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemId")
                    {
                        roleId = long.Parse(c.Value);
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
                        var tmpType = entity.USR_ROLE.Where(p => p.RoleId == roleId).First();
                        tmpType.IsActive = false;
                        tmpType.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpType.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var lst = GetRolesList(true);
                    return TokenManager.GenerateToken(lst);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);
                }

            }

        }
    }
}