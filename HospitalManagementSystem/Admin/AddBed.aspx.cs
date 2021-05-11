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
    public partial class AddBed : System.Web.UI.Page
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
            string Bed_image_name = "";

            string path = "";


            Bed_image_name = Class1.GetRandomPassword(10) + ".jpg";
            F1.SaveAs(Request.PhysicalApplicationPath + "/Admin/BedImages/" + Bed_image_name.ToString());
            path = "BedImages/" + Bed_image_name.ToString();


            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into tblBed(SeatNO,FloorNo,Rent_Day,Room,Status,Type,Image)values(@SeatNO,@FloorNo,@Rent_Day,@Room,@Status,@Type,@Image)";
            cmd.Parameters.AddWithValue("@SeatNO", Txtseatno.Text.Trim());
            cmd.Parameters.AddWithValue("@FloorNO", FloorCB.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Rent_Day", Renttx.Text.Trim());
            cmd.Parameters.AddWithValue("@Room", txtRoom.Text.Trim());
            cmd.Parameters.AddWithValue("@Status", StatusCB.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Type", TypeCB.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Image", path);
            cmd.ExecuteNonQuery();
            msg.Style.Add("display", "block");


            clear();
        }


        public void clear()
        {
            Txtseatno.Text = "";
            FloorCB.Text = "";
            Renttx.Text = "";
            txtRoom.Text = "";
            StatusCB.Text = "";
            TypeCB.Text = "";
           
        }
    }
}