using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HospitalManagementSystem
{
    public partial class EditBed : System.Web.UI.Page
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
            cmd.CommandText = "select *  from tblBed where ID =" + id + "";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                Txtseatno.Text = dr["SeatNO"].ToString();
                FloorCB.Text = dr["FloorNo"].ToString();
                Renttx.Text = dr["Rent_Day"].ToString();
                txtRoom.Text = dr["Room"].ToString();
                StatusCB.Text = dr["Status"].ToString();
                TypeCB.Text = dr["Type"].ToString();
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            string Bed_image_name = "";

            string path = "";


            Bed_image_name = Admin.Class1.GetRandomPassword(10) + ".jpg";
            F1.SaveAs(Request.PhysicalApplicationPath + "/Admin/BedImages/" + Bed_image_name.ToString());
            path = "BedImages/" + Bed_image_name.ToString();


            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Update tblBed SET SeatNO=@SeatNO ,FloorNo=@FloorNo,Rent_Day=@Rent_Day,Room=@Room,Status=@Status,Type=@Type,Image=@Image WHERE ID='" + id + "' ";
            cmd.Parameters.AddWithValue("@SeatNO", Txtseatno.Text.Trim());
            cmd.Parameters.AddWithValue("@FloorNO", FloorCB.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Rent_Day", Renttx.Text.Trim());
            cmd.Parameters.AddWithValue("@Room", txtRoom.Text.Trim());
            cmd.Parameters.AddWithValue("@Status", StatusCB.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Type", TypeCB.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Image", path);

            cmd.ExecuteNonQuery();
            msg.Style.Add("display", "block");


        }
    }
}