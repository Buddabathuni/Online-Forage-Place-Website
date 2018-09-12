using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using AjaxControlToolkit;
using System.Net.Mail;

namespace EventPortalManagement
{
    public partial class Registration : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["SQLConnection"].ConnectionString;
        SqlCommand com;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnSignin_Click(object sender, ImageClickEventArgs e)
           
    
        {
            if (rb1.Checked == true)
            {
                SqlConnection con = new SqlConnection(strConnString);
                com = new SqlCommand();
                com.Connection = con;
                com.CommandType = CommandType.Text;
                com.CommandText = "insert into registration values(@FullName,@PhoneNumber,@EmailID,@Password,@ConfirmPassword,@Gender,@DateOfBirth,@Address,@UserType)";
                com.Parameters.Clear();
                com.Parameters.AddWithValue("@FullName", txt_fullname.Text);
                com.Parameters.AddWithValue("@PhoneNumber", txt_phonenumber.Text);
                com.Parameters.AddWithValue("@EmailID", txt_emailid.Text);
                com.Parameters.AddWithValue("Password", txt_password.Text);
                com.Parameters.AddWithValue("@ConfirmPassword", txt_confirmpassword.Text);
                com.Parameters.AddWithValue("@Gender", rb1.Text);
                com.Parameters.AddWithValue("@DateOfBirth", txt_dob.Text);
                com.Parameters.AddWithValue("@Address", txt_address.Text);
                com.Parameters.AddWithValue("@UserType", ddl_usertype.SelectedIndex);

                string from = ConfigurationManager.AppSettings["From"].ToString();
                string smtp = ConfigurationManager.AppSettings["GmailSmtp"].ToString();
                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                mail.From = new MailAddress(from);
                mail.To.Add(txt_emailid.Text.ToString());
                mail.Subject = "hi";
                mail.Body = "Hello";
                SmtpClient client = new SmtpClient(smtp, 587);
                client.UseDefaultCredentials = true;
                client.Credentials = new System.Net.NetworkCredential("anvitharao18@gmail.com", "7799375595");
                client.EnableSsl = true;
                client.Send(mail);

                if (con.State == ConnectionState.Closed)
                    con.Open();
                com.ExecuteNonQuery();
                con.Close();
                lblregistrationmsg.Text = "Data entered successfully!!!";
                clear();
            }
            else
            {
                SqlConnection con = new SqlConnection(strConnString);
                com = new SqlCommand();
                com.Connection = con;
                com.CommandType = CommandType.Text;
                com.CommandText = "insert into registration values(@FullName,@PhoneNumber,@EmailID,@Password,@ConfirmPassword,@Gender,@DateOfBirth,@Address,@UserType)";
                com.Parameters.Clear();
                com.Parameters.AddWithValue("@FullName", txt_fullname.Text);
                com.Parameters.AddWithValue("@PhoneNumber", txt_phonenumber.Text);
                com.Parameters.AddWithValue("@EmailID", txt_emailid.Text);
                com.Parameters.AddWithValue("Password", txt_password.Text);
                com.Parameters.AddWithValue("@ConfirmPassword", txt_confirmpassword.Text);
                com.Parameters.AddWithValue("@Gender", rb2.Text);
                com.Parameters.AddWithValue("@DateOfBirth", txt_dob.Text);
                com.Parameters.AddWithValue("@Address", txt_address.Text);
                com.Parameters.AddWithValue("@UserType", ddl_usertype.SelectedValue);

                string from = ConfigurationManager.AppSettings["From"].ToString();
                string smtp = ConfigurationManager.AppSettings["GmailSmtp"].ToString();
                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                mail.From = new MailAddress(from);
                mail.To.Add(txt_emailid.Text.ToString());
                mail.Subject = "hi";
                mail.Body = "Hello";
                SmtpClient client = new SmtpClient(smtp, 587);
                client.UseDefaultCredentials = true;
                client.Credentials = new System.Net.NetworkCredential("anvitharao18@gmail.com", "7799375595");
                client.EnableSsl = true;
                client.Send(mail);

                if (con.State == ConnectionState.Closed)
                    con.Open();
                com.ExecuteNonQuery();
                con.Close();
                lblregistrationmsg.Text = "Data entered successfully!!!";
                clear();
            }
        }
        void clear()
        {
            txt_fullname.Text = "";
            txt_phonenumber.Text = "";
            txt_emailid.Text = "";
            txt_password.Text = "";
            txt_confirmpassword.Text = "";
            rb1.Checked = false;
            rb2.Checked = false;
            txt_dob.Text = "";
            txt_address.Text = "";
            ddl_usertype.SelectedIndex = 0;
        }
    }
}
