using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webproject2
{
    public partial class mapload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["InternalRedirect"] = false;
            if (Request.UrlReferrer != null)
            {
                string PreviousPage = Request.UrlReferrer.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session["InternalRedirect"] = true;
            Response.Redirect("login.aspx");

        }
    }
}