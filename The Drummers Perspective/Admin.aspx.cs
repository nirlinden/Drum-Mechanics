using System;
using System.Web.UI;

namespace The_Drummers_Perspective
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // The Bouncer
            if (Session["Username"] == null || Convert.ToBoolean(Session["IsAdmin"]) == false)
            {
                Response.Redirect("Login.aspx", false);
            }
        }

        // The Clear Button Logic
        protected void btnClear_Click(object sender, EventArgs e)
        {
            // Empty the search box
            txtSearch.Text = "";

            // The page will automatically refresh and show all users again
        }
    }
}