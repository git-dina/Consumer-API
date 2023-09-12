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
    [RoutePrefix("api/User")]
    public class UserController : ApiController
    {
        CountriesController cc = new CountriesController();


        public List<UserModel> GetUsersList(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<USR_USER>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var usersList = entity.USR_USER
                                    .Where(searchPredicate)
                                .Select(p => new UserModel
                                {
                                    UserId = p.UserId,
                                    UserName = p.UserName,
                                    LoginName = p.LoginName,
                                    Password = p.Password,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                    RoleId = p.RoleId,
                                    RoleNameAr = p.USR_ROLE.NameAr,
                                    RoleNameEn = p.USR_ROLE.NameEn,
                                }).ToList();


                return usersList;
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
                USR_USER userObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value;
                        userObj = JsonConvert.DeserializeObject<USR_USER>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    USR_USER user;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var userEntity = entity.Set<USR_USER>();
                        if (userObj.UserId == 0)
                        {
                            userObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            userObj.UpdateDate = userObj.CreateDate;
                            userObj.UpdateUserId = userObj.CreateUserId;
                            userObj.IsActive = true;

                            user = userEntity.Add(userObj);
                        }
                        else
                        {
                            user = entity.USR_USER.Find(userObj.UserId);
                            user.UserName = userObj.UserName;
                            //user.Password = userObj.Password;
                            user.LoginName = userObj.LoginName;
                            user.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            user.UpdateUserId = userObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                    }

                    var usersList = GetUsersList(true);
                    return TokenManager.GenerateToken(usersList);
                }
                catch
                {
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
                long deletedUserId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemId")
                    {
                        deletedUserId = long.Parse(c.Value);
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
                        var tmpType = entity.USR_USER.Where(p => p.UserId == deletedUserId).First();
                        tmpType.IsActive = false;
                        tmpType.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpType.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var usersList = GetUsersList(true);
                    return TokenManager.GenerateToken(usersList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);
                }

            }

        }

        [HttpPost]
        [Route("LoginUser")]
        public  string LoginUser(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            List<UserModel> usersList = new List<UserModel>();
            UserModel user = new UserModel();
            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                string loginName = "";
                string password = "";

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "loginName")
                    {
                        loginName = c.Value;
                    }
                    else if (c.Type == "password")
                    {
                        password = c.Value;
                    }

                }

                UserModel emptyuser = new UserModel();

                try
                {

                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        usersList = entity.USR_USER.Where(u => u.IsActive == true && u.LoginName == loginName)
                        .Select(u => new UserModel
                        {
                            UserId = u.UserId,
                           LoginName = u.LoginName,
                           UserName = u.UserName,
                           RoleId = u.RoleId,
                           CreateDate = u.CreateDate,
                           UpdateDate = u.UpdateDate,
                           CreateUserId = u.CreateUserId,
                           UpdateUserId = u.UpdateUserId,
                           userRole = entity.USR_ROLE.Where(x => x.RoleId == u.RoleId && x.IsActive == true)
                                    .Select(x => new RoleModel()
                                    {
                                        NameAr = x.NameAr,
                                        NameEn = x.NameEn,
                                        RoleID = x.RoleId,
                                        Permissions = entity.USR_ROLE_PERMISSION.Where(m => m.RoleId == x.RoleId && m.IsActive == true)
                                                    .Select( m => new PermissionsModel()
                                                    {
                                                        RolesPermissionId = m.RolesPermissionId,
                                                        RoleId = m.RoleId,
                                                        AppObjectId = m.AppObjectId,
                                                        AppObject = m.USR_APP_OBJECT.Name,
                                                        ViewObject = m.ViewObject,
                                                        EditObject = m.EditObject,
                                                        ApproveObject = m.EditObject,
                                                        Notes = m.Notes,
                                                        CreateDate = m.CreateDate,
                                                        UpdateDate = m.UpdateDate,
                                                        CreateUserId = m.CreateUserId,
                                                        UpdateUserId = m.UpdateUserId,
                                                    }).ToList()
                                       
                                    }).FirstOrDefault(),
                        })
                        .ToList();

                        if (usersList == null || usersList.Count <= 0)
                        {
                            user = new UserModel();
                            // rong user
                            return TokenManager.GenerateToken(user);
                        }
                        else
                        {
                            user = usersList.Where(i => i.LoginName == loginName && i.Password == password).FirstOrDefault();
                            if (user != null)
                            {
                              
                                // correct username and pasword
                                return TokenManager.GenerateToken(user);
                            }
                            else
                            {
                                // rong pass return just username
                                user = new UserModel();
                                user.UserName = loginName;
                                return TokenManager.GenerateToken(user);

                            }
                        }
                    }

                }
                catch
                {
                    return TokenManager.GenerateToken(emptyuser);
                }
            }
        }

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

                var lst = GetUsers(isActive);
                return TokenManager.GenerateToken(lst);
            }
        }

        public List<UserModel> GetUsers(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<USR_USER>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var usrsList = entity.USR_USER
                                    .Where(searchPredicate)
                                .Select(p => new UserModel
                                {
                                    UserId = p.UserId,
                                    UserName = p.UserName,
                                    LoginName = p.LoginName,
                                    RoleId = p.RoleId,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                    userRole = entity.USR_ROLE.Where(x => x.RoleId == p.RoleId && x.IsActive == true)
                                    .Select(x => new RoleModel()
                                    {
                                        NameAr = x.NameAr,
                                        NameEn = x.NameEn,
                                        RoleID = x.RoleId,
                                        Permissions = entity.USR_ROLE_PERMISSION.Where(m => m.RoleId == x.RoleId && m.IsActive == true)
                                                    .Select(m => new PermissionsModel()
                                                    {
                                                        RolesPermissionId = m.RolesPermissionId,
                                                        RoleId = m.RoleId,
                                                        AppObjectId = m.AppObjectId,
                                                        AppObject = m.USR_APP_OBJECT.Name,
                                                        ViewObject = m.ViewObject,
                                                        EditObject = m.EditObject,
                                                        ApproveObject = m.EditObject,
                                                        Notes = m.Notes,
                                                        CreateDate = m.CreateDate,
                                                        UpdateDate = m.UpdateDate,
                                                        CreateUserId = m.CreateUserId,
                                                        UpdateUserId = m.UpdateUserId,
                                                    }).ToList()

                                    }).FirstOrDefault(),
                                }).ToList();


                return usrsList;
            }
        }


    }
}