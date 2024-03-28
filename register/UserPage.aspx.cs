using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace register
{
    public partial class UserPage : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\register\register\App_Data\Database1.mdf;Integrated Security=True");
            if (Session["username"]!=null)
            {
              
                conn.Open();
                SqlCommand cmd = new SqlCommand("select Id,UserName,Email,Password,Phone from UserData where Email=@intent",conn);
                cmd.Parameters.AddWithValue("@intent", Session["username"].ToString());
                SqlDataReader dr = cmd.ExecuteReader();
                while(dr.Read())
                {
                    Label2.Text=dr.GetValue(0).ToString();
                    Label3.Text=dr.GetValue(1).ToString();
                    Label4.Text=dr.GetValue(2).ToString();
                    Label5.Text=dr.GetValue(3).ToString();
                    Label1.Text = dr.GetValue(4).ToString();
                    Label10.Text=dr.GetValue(1).ToString();
                }
              
                conn.Close();
            }
            else
            {
                Response.Redirect("Login_page.aspx");
            }

        }

        protected void Button_logout_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("Login_page.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\register\register\App_Data\Tasks.mdf;Integrated Security=True");
            string find = "select *from tasks where (Team like '%'+@Team+'%')";
            SqlCommand cmd = new SqlCommand(find, con);
            con.Open();
            cmd.Parameters.Add("@Team", SqlDbType.NVarChar).Value = TextBox1.Text;
            cmd.ExecuteNonQuery();
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Team");
            GridView2.DataSourceID = null;
            GridView2.DataSource = ds;
            GridView2.DataBind();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\register\register\App_Data\Tasks.mdf;Integrated Security=True");
            string find = "select *from tasks where (Id like '%'+@Id+'%')";
            SqlCommand cmd = new SqlCommand(find, con);
            con.Open();
            cmd.Parameters.Add("@Id", SqlDbType.NVarChar).Value = TextBox2.Text;
            cmd.ExecuteNonQuery();
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Id");
            GridView2.DataSourceID = null;
            GridView2.DataSource = ds;
            GridView2.DataBind();
            con.Close();
        }
    }
}