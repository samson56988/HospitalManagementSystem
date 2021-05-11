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
    public partial class Outdoorpatient : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-J3DHBNP;Initial Catalog=HospitalManagementSystem;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {

                con.Close();

            }
            con.Open();

            Loadlist();
          

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
            cmd.CommandText = "insert into DoctorTble(Name,Degree,Username,Email,DOB,Specialist,Department,Country,Address,Phone,ShortBio,Status,Image)values(@Name,@Degree,@Username,@Email,@DOB,@Specialist,@Department,@Country,@Address,@Phone,@ShortBio,@Status,@Image)";
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
            cmd.Parameters.AddWithValue("@Status",  DropDownStatus.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Image", path);
            cmd.ExecuteNonQuery();
            msg.Style.Add("display", "block");

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