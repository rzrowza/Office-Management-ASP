using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace register
{
    public partial class FirstPage : System.Web.UI.Page
        
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "")
            {
                MessageBox.Show("Missing Elements");
            }
            else
            {
                try
                {
                    string insertQuery = "insert into Message (Name,Email,Subject,Message) values(@ID,@email,@suub,@pass)";
                    SqlCommand com = new SqlCommand(insertQuery, conn);
                    com.Parameters.AddWithValue("@ID",TextBox1.Text);

                    com.Parameters.AddWithValue("@email", TextBox2.Text.Trim());
                    com.Parameters.AddWithValue("@suub", TextBox3.Text.Trim());
                    com.Parameters.AddWithValue("@pass", TextBox4.Text.Trim());
                    com.ExecuteNonQuery();
                    MessageBox.Show("Message sent");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";

                    conn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }
    }
}