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

namespace EventPortalManagement
{
    public partial class HallDetails : System.Web.UI.Page
    {
        public string query, constr;
        public SqlConnection con;

        public void connection()
        {

            constr = ConfigurationManager.ConnectionStrings["ForagePlace"].ToString();
            con = new SqlConnection(constr);
            con.Open();

        }
        private String strConnection = "Data Source=VAIO;Initial Catalog=ForagePlace;Integrated Security=True";
        // private SqlConnection con = new SqlConnection("Data source=.; uid=sa;   pwd=Password$2; database=CountryStateCity");
        // SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ForagePlaceConnectionString"].ConnectionString);
        //SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //   Bind_ddl_City();
                BindCity();
            }
        }

        protected void BindCity()
        {
            //conenction path for database
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
        //public void Bind_ddl_City()
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select City,CitId from City", con);
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    ddl_city.DataSource = dr;
        //    ddl_city.Items.Clear();
        //    ddl_city.Items.Add("--Please Select city--");
        //    ddl_city.DataTextField = "City";
        //    ddl_city.DataValueField = "CityId";
        //    ddl_city.DataBind();
        //    con.Close();
        //}
        //public void Bind_ddl_Place()
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select Place,PlaceID from Place where CityId='" + ddl_city.SelectedValue + "'", con);
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    ddl_place.DataSource = dr;
        //    ddl_place.Items.Clear();
        //    ddl_place.Items.Add("--Please Select Place--");
        //    ddl_place.DataTextField = "Place";
        //    ddl_place.DataValueField = "PlaceID";
        //    ddl_place.DataBind();
        //    con.Close();
        //}
        protected void btnSignin_Click(object sender, ImageClickEventArgs e)
        {
            connection();
            query = "Prc_HallDetails";         //Stored Procedure name 
            SqlCommand cmd = new SqlCommand(query, con);  //creating  SqlCommand  object
            cmd.CommandType = CommandType.StoredProcedure;  //here we declaring command type as stored Procedure

            /* adding paramerters to  SqlCommand below */
            cmd.Parameters.AddWithValue("@HallName", txt_hallname.Text.ToString());
            cmd.Parameters.AddWithValue("@HallID", txt_hallid.Text.ToString());
            cmd.Parameters.AddWithValue("@City ", ddl_city.Text.ToString());
            cmd.Parameters.AddWithValue("@Place ", ddl_place.Text.ToString());
            cmd.Parameters.AddWithValue("@HallTimings ", txt_halltimings.Text.ToString());
            cmd.Parameters.AddWithValue("@SeatingCapacity ", txt_seatingcapacity.Text.ToString());
            cmd.Parameters.AddWithValue("@Status ", ddl_status.Text.ToString());
            cmd.Parameters.AddWithValue("@Dimensions ", ddl_dimensions.Text.ToString());
            cmd.Parameters.AddWithValue("@EventType ", ddl_eventtype.Text.ToString());
            cmd.Parameters.AddWithValue("@NoOfWorkers ", txt_noofworkers.Text.ToString());
            cmd.ExecuteNonQuery();                     //executing the sqlcommand
            Lblhalldetails.Visible = true;
            Lblhalldetails.Text = "Records are Submitted Successfully";
            // To Clear the Data in textboxes
            txt_hallname.Text = "";
            txt_hallid.Text = "";
            txt_halltimings.Text = "";
            txt_noofworkers.Text = "";
            txt_seatingcapacity.Text = "";
            ddl_city.SelectedIndex = 0;
            ddl_dimensions.SelectedIndex = 0;
            ddl_eventtype.SelectedIndex = 0;
            ddl_place.SelectedIndex = 0;
            ddl_status.SelectedIndex = 0;
        }

        protected void ddl_city_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Bind_ddl_Place();
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
            //if (ddlState.SelectedValue == "0")
            //{
            //    ddlRegion.Items.Clear();
            //    ddlRegion.Items.Insert(0, new ListItem("--Select--", "0"));
            //}


        }
    }
}