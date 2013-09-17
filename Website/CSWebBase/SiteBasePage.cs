using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using CSBusiness.Web;
using CSBusiness;
using CSBusiness.Resolver;
using System.Configuration;
using CSData;
using System.Data.SqlClient;
using CSCore.DataHelper;
using CSBusiness.Preference;
using CSBusiness.Attributes;
using System.Xml.Linq;
using System.IO;

namespace CSWebBase
{
    public class SiteBasePage : CSBasePage
    {
        public static string AdminEmail
        {
            get
            {
                return ConfigurationManager.AppSettings["AdminEmail"];
            }
        }

        protected override void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
        }

        public static void SendErrorEmail(string message)
        {
            CSCore.EmailHelper.SendEmail("no-reply@trytransform.com", AdminEmail, "[TryTransform.com Error]", message, false);
        }

    }
}
