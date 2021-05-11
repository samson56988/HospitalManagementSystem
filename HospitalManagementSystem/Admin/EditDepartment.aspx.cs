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
    public partial class EditDepartment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-J3DHBNP;Initial Catalog=HospitalManagementSystem;Integrated Security=True");
        int id;
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
            cmd.CommandText = "select *  from Department where DepartmentID =" + id + "";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                txtDepartment.Text = dr["Department"].ToString();
                txtDescription.Text = dr["DepartmentDescription"].ToString();
                



            }

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Update Department SET Department=@Department ,DepartmentDescription=@DepartmentDescription WHERE DepartmentID='" + id + "' ";
            cmd.Parameters.AddWithValue("@Department", txtDepartment.Text.Trim());
            cmd.Parameters.AddWithValue("@DepartmentDescription", txtDescription.Text.Trim());
           
            cmd.ExecuteNonQuery();
            msg.Style.Add("display", "block");
            clear();
        }

        public void clear()
        {
            txtDescription.Text = "";
            txtDepartment.Text = "";

        }
    }
}