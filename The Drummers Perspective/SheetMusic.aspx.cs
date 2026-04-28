using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Drummers_Perspective
{
    public partial class SheetMusic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // If they do not have a Username session, kick them back to the login page.
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx", false);
            }
        }
    }
}