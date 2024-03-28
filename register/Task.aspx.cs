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
    public partial class Task : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TasksConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" )
            {
                MessageBox.Show("Missing Elements");
            }
            else
            {
                try
                {
                    string query = "insert into Tasks values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    MessageBox.Show("Tasks added");
                    GridView1.DataBind();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("delete from Tasks where Id='" + TextBox1.Text + "'or Team='" + TextBox2.Text + "' or Task='" + TextBox3.Text + "' ", conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            GridView1.DataBind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
          
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update Salary set Team='" + TextBox2.Text + "',Task='" + TextBox3.Text + "' where Id='" + TextBox1.Text + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            GridView1.DataBind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
           
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string find = "select *from Tasks where (Id like '%'+@Id+'%')";
            SqlCommand cmd = new SqlCommand(find, conn);
            cmd.Parameters.Add("@Id", SqlDbType.NVarChar).Value = TextBox4.Text;
            cmd.ExecuteNonQuery();

            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Id");
            GridView1.DataSourceID = null;
            GridView1.DataSource = ds;
            GridView1.DataBind();
            conn.Close();
        }
    }
}