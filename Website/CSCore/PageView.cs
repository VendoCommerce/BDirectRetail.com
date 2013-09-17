using System;
using System.Configuration;
using System.Web;
using System.Data.SqlClient;
using System.Collections.Generic;


/// <summary>
/// Summary description for Customer
/// </summary>
/// 
public class PageView
{
    public static string GetIpAddress(HttpContext context)
    {
        string strIpAddress;
        strIpAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        if (strIpAddress == null)
        {
            strIpAddress = context.Request.ServerVariables["REMOTE_ADDR"];
        }
        return strIpAddress;
    }

    public static string GetSessionId(HttpContext context)
    {
        string sessionId = String.Empty;
        if (context.Request.Cookies["ASP.NET_SessionId"] != null)
        {
            sessionId = context.Request.Cookies["ASP.NET_SessionId"].Value;
        }
        return sessionId;
    }

    public static void InsertPageEntry(HttpContext context)
    {
       
        string sessionId = GetSessionId(context); 
        string ipAddress = GetIpAddress(context);
        string version = context.Request.Url.AbsolutePath.ToString().Replace("/store", "");
        version = version.Substring(0, version.LastIndexOf('/'));
        version = version.Substring(version.LastIndexOf('/')+1 , (version.Length - (version.LastIndexOf('/')+1)));
        
        string sql = "";
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["client_db"].ToString()))
        {
            conn.Open();
            sql = "INSERT INTO [PageViews] ([CustomerSessionId],[IPAddress],[URL],[VersionId],[CreateDate])";
            sql = sql + " VALUES ('" + sessionId + "','" + ipAddress + "','" + context.Request.Url + "','" + version + "','" + DateTime.Now + "') ";


            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}


