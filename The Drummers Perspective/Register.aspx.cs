using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace The_Drummers_Perspective
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Response.Redirect("Default.aspx", false);
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string expLevel = "";
            if (rbBeginner.Checked) expLevel = "Beginner";
            else if (rbAdvanced.Checked) expLevel = "Advanced";

            string connString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=DrumData;Integrated Security=True;";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                // Removed FirstName and LastName from the SQL query
                string query = @"INSERT INTO Users (Username, Email, Password, Phone, PreferredStyle, ExpLevel, IsAdmin) 
                                 VALUES (@Username, @Email, @Password, @Phone, @PreferredStyle, @ExpLevel, 1)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Removed the txtFirstName and txtLastName parameters
                    cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", txtRegEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtRegPass.Text.Trim());
                    cmd.Parameters.AddWithValue("@Phone", txtPhone.Text.Trim());
                    cmd.Parameters.AddWithValue("@PreferredStyle", ddlStyle.SelectedValue);
                    cmd.Parameters.AddWithValue("@ExpLevel", expLevel);

                    try
                    {
                        conn.Open();
                        cmd.ExecuteNonQuery();

                        Session["Username"] = txtUsername.Text.Trim();
                        Session["IsAdmin"] = true;

                        Response.Redirect("SheetMusic.aspx", false);
                    }
                    catch (Exception ex)
                    {
                        lblServerMessage.Text = "An error occurred during registration. Make sure your username and email are unique.";
                        lblServerMessage.CssClass = "d-block text-center text-danger small fw-bold mb-3";
                    }
                }
            }
        }
    }
}