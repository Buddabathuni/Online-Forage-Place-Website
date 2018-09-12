using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace EventPortalManagement
{
    public partial class DisplayHallDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridview();
        }

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

        protected void GVDisplayHallDetails_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblHallName = (Label)e.Row.FindControl("lblHallName");
                System.Data.DataRowView rv1 = e.Row.DataItem as System.Data.DataRowView;
                lblHallName.Text = Convert.ToString(rv1.Row.ItemArray[0]);

                Label lblSeatingCapacity = (Label)e.Row.FindControl("lblSeatingCapacity");
                System.Data.DataRowView rv2 = e.Row.DataItem as System.Data.DataRowView;
                lblSeatingCapacity.Text = rv2.Row.ItemArray[1].ToString();

                Label lblEventType = (Label)e.Row.FindControl("lblEventType");
                System.Data.DataRowView rv3 = e.Row.DataItem as System.Data.DataRowView;
                lblEventType.Text = rv3.Row.ItemArray[2].ToString();

                Label lblNoOfWorkers = (Label)e.Row.FindControl("lblNoOfWorkers");
                System.Data.DataRowView rv4 = e.Row.DataItem as System.Data.DataRowView;
                lblNoOfWorkers.Text = rv4.Row.ItemArray[3].ToString();


                //Label lblCity = (Label)e.Row.FindControl("lblCity");
                //System.Data.DataRowView rv2 = e.Row.DataItem as System.Data.DataRowView;
                //lblCity.Text = rv2.Row.ItemArray[1].ToString();

                //Label lblPlace = (Label)e.Row.FindControl("lblPlace");
                //System.Data.DataRowView rv3 = e.Row.DataItem as System.Data.DataRowView;
                //lblPlace.Text = rv3.Row.ItemArray[2].ToString();

                //Label lblSeatingCapacity = (Label)e.Row.FindControl("lblSeatingCapacity");
                //System.Data.DataRowView rv4 = e.Row.DataItem as System.Data.DataRowView;
                //lblSeatingCapacity.Text = rv4.Row.ItemArray[3].ToString();

                //Label lblEventType = (Label)e.Row.FindControl("lblEventType");
                //System.Data.DataRowView rv5 = e.Row.DataItem as System.Data.DataRowView;
                //lblEventType.Text = rv5.Row.ItemArray[4].ToString();

                //Label lblNoOfWorkers = (Label)e.Row.FindControl("lblNoOfWorkers");
                //System.Data.DataRowView rv6 = e.Row.DataItem as System.Data.DataRowView;
                //lblNoOfWorkers.Text = rv6.Row.ItemArray[5].ToString();
            }
        }

        
        //protected void BindGridview()
        //{
        //    using (SqlConnection con = new SqlConnection("Data Source=VAIO;Integrated Security=true;Initial Catalog=ForagePlace"))
        //    {
        //        con.Open();
        //        SqlCommand cmd = new SqlCommand("Select HallName,SeatingCapacity,EventType,NoOfWorkers FROM HallDetails", con);
        //        SqlDataReader dr = cmd.ExecuteReader();
        //        GVDisplayHallDetails.DataSource = dr;
        //        GVDisplayHallDetails.DataBind();
        //        con.Close();
        //    }
        //}
    }
}