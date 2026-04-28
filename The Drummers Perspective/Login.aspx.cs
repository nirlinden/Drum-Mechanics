using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace The_Drummers_Perspective
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // If they are already logged in, kick them to the home page
            if (Session["Username"] != null)
            {
                Response.Redirect("Default.aspx", false);
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // 1. Where is the database?
            string connString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=DrumData;Integrated Security=True;";

            // 2. Open the connection
            using (SqlConnection conn = new SqlConnection(connString))
            {
                // 3. The SQL Query (Checking Email and Password)
                string query = "SELECT Username, IsAdmin FROM Users WHERE Email = @Email AND Password = @Password";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // 4. Securely pass the data from the textboxes to prevent SQL Injection
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

                    conn.Open();

                    // 5. Read the results
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read()) // If a match is found!
                        {
                            // Create the Sessions (The Digital Wristbands)
                            Session["Username"] = reader["Username"].ToString();
                            Session["IsAdmin"] = Convert.ToBoolean(reader["IsAdmin"]);

                            // Send them to the Drum Vault
                            Response.Redirect("SheetMusic.aspx", false);
                        }
                        else
                        {
                            // If no match is found, show the error
                            lblServerMessage.Text = "Invalid email or password. Please try again.";
                            lblServerMessage.CssClass = "d-block text-center text-danger small fw-bold mb-3";
                        }
                    }
                }
            }
        }
    }
}