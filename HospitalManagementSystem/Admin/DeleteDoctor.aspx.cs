﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HospitalManagementSystem
{
    public partial class DeleteDoctor : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-J3DHBNP;Initial Catalog=HospitalManagementSystem;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {

                con.Close();

            }
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete DoctorTble where ID='" + Request.QueryString["id2"].ToString() + " ' ";
            cmd.ExecuteNonQuery();
            Response.Redirect("ViewDoctors.aspx");

        }
    }
}