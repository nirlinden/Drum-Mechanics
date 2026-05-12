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

            string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\DrumData.mdf;Integrated Security=True;";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                string query = @"INSERT INTO Users (Username, Email, Password, Phone, PreferredStyle, ExpLevel, IsAdmin) 
                                 VALUES (@Username, @Email, @Password, @Phone, @PreferredStyle, @ExpLevel, 0 )";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
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
                        Session["IsAdmin"] = false;

                        Response.Redirect("SheetMusic.aspx", false);
                    }
                    catch (Exception ex)
                    {
                        lblServerMessage.Text = "SYSTEM ERROR: " + ex.Message;
                        lblServerMessage.CssClass = "d-block text-center text-danger small fw-bold mb-3";
                    }
                }
            }
        }
    }
}