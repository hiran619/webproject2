using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace webproject2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
               if(Request.Cookies["username"]!=null && Request.Cookies["password"]!=null)
                {
                    TextBox1.Text = Request.Cookies["username"].Value;
                    TextBox2.Text = Request.Cookies["password"].Value;
                }
            }
        }

        protected void Button1_Click(object sender,EventArgs e)
        {
            

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if(Page.IsValid==true)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\IMAKA\Documents\login1.mdf;Integrated Security=True;Connect Timeout=30");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from login where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
                SqlDataReader dt = cmd.ExecuteReader();
                
                if (dt.Read() == true)
                {
                    if(CheckBox1.Checked)
                    {
                        Response.Cookies["username"].Value = TextBox1.Text;
                        Response.Cookies["password"].Value = TextBox2.Text;
                        Response.Cookies["username"].Expires = DateTime.Now.AddMinutes(1);
                        Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(1);

                    }
                    else
                    {
                        Response.Cookies["username"].Expires = DateTime.Now.AddMinutes(-1);
                        Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(-1);
                    }
                    Response.Redirect("~/mapload.aspx");


                }
                else
                {
                    Response.Write("check ure  login");

                }


                con.Close();
            }
            else if(Page.IsValid==false)
            {
                Label1.Text = "validation error";
                
            }



          
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length >= 2)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length >= 2)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}