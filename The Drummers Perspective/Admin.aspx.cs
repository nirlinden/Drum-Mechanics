using System;
using System.Web.UI;

namespace The_Drummers_Perspective
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null || Convert.ToBoolean(Session["IsAdmin"]) == false)
            {
                Response.Redirect("Login.aspx", false);
            }
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtSearch.Text = "";
        }
    }
}