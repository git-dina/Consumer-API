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
                            user.Password = userObj.Password;
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
    }
}