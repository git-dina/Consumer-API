using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POS_Server.Models
{
    public class CompanySettingModel
    {
        public long SettingId { get; set; }
        public string Name { get; set; }
        public string Value { get; set; }
        public string Notes { get; set; }
    }
}