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
    public partial class AddSpecialist : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-J3DHBNP;Initial Catalog=HospitalManagementSystem;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {

                con.Close();

            }
            con.Open();

            LoadSpecialist();
            lockbutton();
           


        }


        private void LoadSpecialist()
        {

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Specialist  ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            r1.DataSource = dt;
            r1.DataBind();


        }


        public void lockbutton()
        {
            if(Specialist.Text == "")
            {
                
            }
        
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {





            if (Specialist.Text != "")
            {

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Specialist(Specialist)values(@Specialist)";
                cmd.Parameters.AddWithValue("@Specialist", Specialist.Text.Trim());
                cmd.ExecuteNonQuery();
                msg.Style.Add("display", "block");
                //LoadSpecialist();
            }
            else
            {
                msg2.Style.Add("display", "block");

            }
            
            clear();
            lockbutton();

        }

        private void clear()
        {

            Specialist.Text = "";


        }

        
    }
}