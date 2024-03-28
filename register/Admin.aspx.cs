using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace register
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMsz.Visible = false;
        }

        protected void Buttonlogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\register\register\App_Data\Database1.mdf;Integrated Security=True"))
            {
                conn.Open();
                string query = "select count(1) from UserData where Email=@username and Password=@password";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@username", TextBoxUN.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBoxPassword.Text.Trim());
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["username"] = TextBoxUN.Text.Trim();
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    lblErrorMsz.Visible = true;
                }
            }
        }
    }
}