using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace EventPortalManagement
{
    public partial class ClientRequirement : System.Web.UI.Page
    {
        private String strConnection = "Data Source=VAIO;Initial Catalog=ForagePlace;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCity();
            }
            BindGridview();
          //  BindDropDownList();
        }

//protected void BindDropDownList()
//{
//    SqlConnection con = new SqlConnection(constr);
//constr.Open();
//string Query = "Select Id,Name From Sample";
//SqlCommand cmd = new SqlCommand(Query, constr);
//DataSet ds = new DataSet();
//SqlDataAdapter ada = new SqlDataAdapter(cmd);
//ada.Fill(ds);
//DdlSelect.DataSource = ds;
//DdlSelect.DataValueField = "Id";
//DdlSelect.DataTextField = "Name";
//DdlSelect.DataBind();
//con.Close();
//}

        protected void BindGridview()
        {
            string strConnection = ConfigurationManager.ConnectionStrings["SQLConnection"].ToString();
            SqlConnection con = new SqlConnection(strConnection);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Prc_GetAllHallDetails";
            cmd.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            GVDisplayHallDetails.DataSource = ds;
            GVDisplayHallDetails.DataBind();
        }
        protected void BindCity()
        {
            SqlConnection con = new SqlConnection(strConnection);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from City", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            ddl_city.DataSource = ds;
            ddl_city.DataTextField = "CityName";
            ddl_city.DataValueField = "CityID";
            ddl_city.DataBind();
            ddl_city.Items.Insert(0, new ListItem("--Select--", "0"));
            ddl_place.Items.Insert(0, new ListItem("--Select--", "0"));
        }

        protected void ddl_city_SelectedIndexChanged(object sender, EventArgs e)
        {
            int CityID = Convert.ToInt32(ddl_city.SelectedValue);
            SqlConnection con = new SqlConnection(strConnection);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Place where CityID=" + CityID, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            ddl_place.DataSource = ds;
            ddl_place.DataTextField = "PlaceName";
            ddl_place.DataValueField = "PlaceID";
            ddl_place.DataBind();
            ddl_place.Items.Insert(0, new ListItem("--Select--", "0"));

        }
    }
}



 //if (e.Row.RowType == DataControlRowType.DataRow)
 //               {
 //                   DataRowView rv = e.Row.DataItem as DataRowView;

 //                   LinkButton viewlink = (LinkButton)e.Row.FindControl("lnkView");
 //                   viewlink.Visible = true;

 //                   Label lblSerial = (Label)e.Row.FindControl("lblSerial");
 //                   lblSerial.Text = ((GV_NetworkAPN.PageIndex * GV_NetworkAPN.PageSize) + e.Row.RowIndex + 1).ToString();

 //                   Label lblSubscriberID = (Label)e.Row.FindControl("lblSubscriberID");
 //                   lblSubscriberID.Text = Convert.ToString(rv.Row["SubscriberID"]);

 //                   Label lblSubscriber = (Label)e.Row.FindControl("lblSubscriber");
 //                   lblSubscriber.Text = Convert.ToString(rv.Row["Subscriber"]);