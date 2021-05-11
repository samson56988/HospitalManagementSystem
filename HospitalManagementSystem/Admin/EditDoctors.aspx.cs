using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HospitalManagementSystem.Admin
{
    public partial class EditDoctors : System.Web.UI.Page
    {
        int id;
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-J3DHBNP;Initial Catalog=HospitalManagementSystem;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (con.State == ConnectionState.Open)
            {

                con.Close();

            }
            con.Open();

            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            if (IsPostBack) return;
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select *  from DoctorTble where ID =" + id + "";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            Loadlist();

            foreach (DataRow dr in dt.Rows)
            {
                txt_Name.Text = dr["Name"].ToString();
                txt_Degree.Text = dr["Degree"].ToString();
                txtUsername.Text = dr["Username"].ToString();
                txtEmail.Text = dr["Email"].ToString();
                DOB.Text = dr["DOB"].ToString();
                SpecialistDropDown.Text = dr["Specialist"].ToString();
                DepartmentCB.Text = dr["Department"].ToString();
                CountryCb.Text = dr["Country"].ToString();
                Address.Text = dr["Address"].ToString();
                Phone.Text = dr["Phone"].ToString();
                txtBio.Text = dr["ShortBio"].ToString();
                DropDownStatus.Text = dr["Status"].ToString();

               




            }



        }

        public void Loadlist()
        {

            string com = "Select * from Specialist";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            SpecialistDropDown.DataSource = dt;
            SpecialistDropDown.DataBind();
            SpecialistDropDown.DataTextField = "Specialist";

            SpecialistDropDown.DataBind();

            string com2 = "Select * from Department";
            SqlDataAdapter adpt2 = new SqlDataAdapter(com2, con);
            DataTable dt2 = new DataTable();
            adpt2.Fill(dt2);
            DepartmentCB.DataSource = dt2;
            DepartmentCB.DataBind();
            DepartmentCB.DataTextField = "Department";


            DepartmentCB.DataBind();

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            string Doctor_image_name = "";

            string path = "";


            Doctor_image_name = Class1.GetRandomPassword(10) + ".jpg";
            F1.SaveAs(Request.PhysicalApplicationPath + "/Admin/DoctorImages/" + Doctor_image_name.ToString());
            path = "DoctorImages/" + Doctor_image_name.ToString();


            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Update DoctorTble SET Name=@Name ,Degree=@Degree,Username=@Username,Email=@Email,DOB=@DOB,Specialist=@Specialist,Department=@Department,Country=@Country,Address =@Address,Phone=@Phone,ShortBio=@ShortBio,Status=@Status,Image=@Image WHERE ID='" + id + "' ";
            cmd.Parameters.AddWithValue("@Name", txt_Name.Text.Trim());
            cmd.Parameters.AddWithValue("@Degree", txt_Degree.Text.Trim());
            cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@DOB", DOB.Text.Trim());
            cmd.Parameters.AddWithValue("@Specialist", SpecialistDropDown.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Department", DepartmentCB.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Country", CountryCb.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Address", Address.Text.Trim());
            cmd.Parameters.AddWithValue("@Phone", Phone.Text.Trim());
            cmd.Parameters.AddWithValue("@ShortBio", txtBio.Text.Trim());
            cmd.Parameters.AddWithValue("@Status", DropDownStatus.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Image", path);
            cmd.ExecuteNonQuery();
            msg.Style.Add("display", "block");
            cmd.ExecuteNonQuery();
         
            clear();
        }

        public void clear()
        {

            txt_Name.Text = "";
            txt_Degree.Text = "";
            txtUsername.Text = "";
            txtEmail.Text = "";
            DOB.Text = "";



            Address.Text = "";
            Phone.Text = "";
            txtBio.Text = "";




        }
    }
}