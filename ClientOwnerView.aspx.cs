using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EventPortalManagement
{
    public partial class ClientOwnerView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        dbClass cls = new dbClass();
        protected void GVDisplayClientOwnerView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddl_select_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_select.Text == "--Select--")
            {
                Page.RegisterStartupScript("ss", "<script>alert('Select the user')</script>");
            }
            else
            {
                DataSet ds = new DataSet();
                ds = cls.select("select FullName,PhoneNumber,EmailID,Gender,Address from Registration where UserType='" + ddl_select.SelectedItem.ToString() + "'");
               
               // ds = cls.select("select Reg_fullname as Name,reg_phno as Phone,reg_email as Email,Reg_GvtId as Nationality,reg_gender as Gender,reg_addr as Address from Register where Reg_type='" + ddl_select.SelectedItem.ToString() + "'");
                GVDisplayClientOwnerView.DataSource = ds.Tables[0];
                GVDisplayClientOwnerView.DataBind();
            }
        }
    }
}