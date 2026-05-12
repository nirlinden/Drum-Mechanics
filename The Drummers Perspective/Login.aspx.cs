using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace The_Drummers_Perspective
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Response.Redirect("Default.aspx", false);
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\DrumData.mdf;Integrated Security=True;";

            using (SqlConnection conn = new SqlConnection(connString))
            {

                string query = "SELECT Username, IsAdmin FROM Users WHERE Email = @Email AND Password = @Password";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

                    conn.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {

                            Session["Username"] = reader["Username"].ToString();
                            Session["IsAdmin"] = Convert.ToBoolean(reader["IsAdmin"]);

                            Response.Redirect("SheetMusic.aspx", false);
                        }
                        else
                        {

                            lblServerMessage.Text = "Invalid email or password. Please try again.";
                            lblServerMessage.CssClass = "d-block text-center text-danger small fw-bold mb-3";
                        }
                    }
                }
            }
        }
    }
}