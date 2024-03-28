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
    public partial class manage : System.Web.UI.Page
    {
        SqlConnection conn=new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(TextID.Text=="" || TextUN.Text==""|| TextBoxEMAIL.Text ==""||TextBoxPASS.Text==""||TextBoxPhone.Text=="" )
            {
                MessageBox.Show("Missing Elements");
            }
           else
            {
                try
                {
                 string query="insert into UserData values ('"+TextID.Text + "','" + TextUN.Text + "','" + TextBoxEMAIL.Text + "','" + TextBoxPASS.Text+ "','" + TextBoxPhone.Text + "','" + TextBoxJoin.Text + "','" + TextBoxRetired.Text + "')";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    MessageBox.Show("employee added");
                    GridView1.DataBind();
                    TextID.Text = "";
                    TextUN.Text = "";
                    TextBoxEMAIL.Text = "";
                    TextBoxPASS.Text = "";
                    TextBoxPhone.Text = "";
                    TextBoxJoin.Text = "";
                    TextBoxRetired.Text = "";


                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("delete from UserData where Id='" + TextID.Text + "'or Email='" + TextBoxEMAIL.Text + "' ", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            MessageBox.Show("Data has been deleted");
            GridView1.DataBind();
            TextID.Text = "";
            TextUN.Text = "";
            TextBoxEMAIL.Text = "";
            TextBoxPASS.Text = "";
            TextBoxPhone.Text = "";
            TextBoxJoin.Text = "";
            TextBoxRetired.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String s="update USerData set UserName=@Uname,Email=@email,Password=@pass,Phone=@phone,Joine=@join,Retired=@retired  where Id=@id";
            SqlCommand com = new SqlCommand(s,conn);
            
            com.Parameters.AddWithValue("@id", TextID.Text.Trim());

            com.Parameters.AddWithValue("@Uname", TextUN.Text.Trim());
            com.Parameters.AddWithValue("@email", TextBoxEMAIL.Text.Trim());
            com.Parameters.AddWithValue("@pass", TextBoxPASS.Text.Trim());
            com.Parameters.AddWithValue("@phone", TextBoxPhone.Text.Trim());
            com.Parameters.AddWithValue("@retired", TextBoxRetired.Text.Trim());
            com.Parameters.AddWithValue("@join",TextBoxJoin.Text.Trim());
            com.ExecuteNonQuery();
          
            conn.Close();
            GridView1.DataBind();
            TextID.Text = "";
            TextUN.Text = "";
            TextBoxEMAIL.Text = "";
            TextBoxPASS.Text = "";
            TextBoxPhone.Text = "";
            TextBoxJoin.Text = "";
            TextBoxRetired.Text = "";

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string find = "select *from UserData where (Id like '%'+@Id+'%')";
            SqlCommand cmd = new SqlCommand(find, conn);
            cmd.Parameters.Add("@Id", SqlDbType.NVarChar).Value = TextBox1.Text;
            cmd.ExecuteNonQuery();

            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adapter.Fill(ds,"Id");
            GridView1.DataSourceID = null;
            GridView1.DataSource = ds;
            GridView1.DataBind();
            conn.Close();
          

              
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("FirstPage.aspx");
        }
    }
}