using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POS_Server.Models
{
    public class PermissionsModel
    {
        public int RolesPermissionId { get; set; }
        public Nullable<int> AppObjectId { get; set; }
        public Nullable<long> RoleId { get; set; }
        public Nullable<bool> ViewObject { get; set; }
        public Nullable<bool> EditObject { get; set; }
        public Nullable<bool> ApproveObject { get; set; }
        public string Notes { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }
        //extr 
        public string AppObject { get; set; }
        public string NameAr { get; set; }
        public string NameEn { get; set; }
    }

    public class RoleModel
    {
        public long RoleID { get; set; }
        public string NameAr { get; set; }
        public string NameEn { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }

        public List<PermissionsModel> Permissions { get; set; }
    }

    public class AppObjectModel
    {
        public int AppObjectId { get; set; }
        public string Name { get; set; }
        public string NameEn { get; set; }
        public string NameAr { get; set; }
    }
}