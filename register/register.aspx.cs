using  System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;

namespace register
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID=Guid.NewGuid();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into tABLE (Id,UserName,Email,Password,Phone) values(@ID,@Uname,@email,@password,@phone)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@ID", newGUID.ToString());

                com.Parameters.AddWithValue("@Uname",TextBoxUN.Text.Trim());
                com.Parameters.AddWithValue("@email", TextBoxEmail.Text.Trim());
                com.Parameters.AddWithValue("@password", TextBoxPass.Text.Trim());
                com.Parameters.AddWithValue("@phone", TextBoxPhone.Text.Trim());
                com.ExecuteNonQuery();
                MessageBox.Show("Registration Successful");
                Response.Redirect("Login_page.aspx");
                conn.Close();

            }
            catch(Exception ex)
            {

                Response.Write("EEror"+ex.ToString());
            }
          
        }
    }
}