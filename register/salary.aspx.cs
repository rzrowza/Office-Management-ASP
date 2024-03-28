using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Windows.Forms;

namespace register
{
    public partial class salary : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SalaryConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into salary values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "')", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            GridView1.DataBind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("delete from salary where Id='" + TextBox1.Text + "'or Name='" + TextBox2.Text + "' or Position='" + TextBox3.Text + "' ", conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            GridView1.DataBind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("update Salary set Name='" + TextBox2.Text + "',Position='" + TextBox3.Text + "',salary='" + TextBox5.Text + "' where Id='" + TextBox1.Text + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            GridView1.DataBind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
                                                                                                                                       TextBox5.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string find = "select *from salary where (Id like '%'+@Id+'%')";
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