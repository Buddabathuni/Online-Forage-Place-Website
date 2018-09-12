using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;

namespace EventPortalManagement
{
    public class dbClass
    {
        public dbClass()
        {
            //
            // TODO: Add constructor logic here
            //

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnection"].ConnectionString);

        public void insertdelupdate(string query)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataSet select(string query)
        {
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}