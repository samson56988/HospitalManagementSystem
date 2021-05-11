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
    public partial class AddDepartment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-J3DHBNP;Initial Catalog=HospitalManagementSystem;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (con.State == ConnectionState.Open)
            {

                con.Close();

            }
            con.Open();

            

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Department(Department,DepartmentDescription)values(@Department,@DepartmentDescription)";
            cmd.Parameters.AddWithValue("@Department", txtDepartment.Text.Trim());
            cmd.Parameters.AddWithValue("@DepartmentDescription", txtDescription.Text.Trim());
            cmd.ExecuteNonQuery();
            msg.Style.Add("display", "block");

            Clear();


        }

        private void Clear()
        {
            txtDescription.Text = "";
            txtDepartment.Text = "";
        }
    }
}