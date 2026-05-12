using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace The_Drummers_Perspective
{
    public partial class Profile : System.Web.UI.Page
    {
        private string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\DrumData.mdf;Integrated Security=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx", false);
                return;
            }

            if (!IsPostBack)
            {
                LoadUserData();
            }
        }

        private void LoadUserData()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                string query = "SELECT Username, Email, Phone, PreferredStyle, ExpLevel FROM Users WHERE Username = @Username";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", Session["Username"].ToString());
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        txtUsername.Text = reader["Username"].ToString();
                        txtEmail.Text = reader["Email"].ToString();
                        txtPhone.Text = reader["Phone"].ToString();

                        string style = reader["PreferredStyle"].ToString();
                        if (ddlStyle.Items.FindByValue(style) != null)
                            ddlStyle.SelectedValue = style;

                        string level = reader["ExpLevel"].ToString();
                        rbBeginner.Checked = level == "Beginner";
                        rbAdvanced.Checked = level == "Advanced";
                    }
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string username = Session["Username"].ToString();
            string currentPass = txtCurrentPass.Text.Trim();
            string newPass = txtNewPass.Text.Trim();
            bool changingPassword = !string.IsNullOrEmpty(currentPass) && !string.IsNullOrEmpty(newPass);

            string expLevel = "";
            if (rbBeginner.Checked) expLevel = "Beginner";
            else if (rbAdvanced.Checked) expLevel = "Advanced";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();

                if (changingPassword)
                {
                    string checkQuery = "SELECT COUNT(*) FROM Users WHERE Username = @Username AND Password = @Password";
                    using (SqlCommand checkCmd = new SqlCommand(checkQuery, conn))
                    {
                        checkCmd.Parameters.AddWithValue("@Username", username);
                        checkCmd.Parameters.AddWithValue("@Password", currentPass);
                        int match = (int)checkCmd.ExecuteScalar();

                        if (match == 0)
                        {
                            ShowMessage("Current password is incorrect.", true);
                            return;
                        }
                    }
                }

                string updateQuery;
                if (changingPassword)
                {
                    updateQuery = @"UPDATE Users 
                                    SET Email = @Email, Phone = @Phone, PreferredStyle = @PreferredStyle, 
                                        ExpLevel = @ExpLevel, Password = @NewPassword 
                                    WHERE Username = @Username";
                }
                else
                {
                    updateQuery = @"UPDATE Users 
                                    SET Email = @Email, Phone = @Phone, PreferredStyle = @PreferredStyle, 
                                        ExpLevel = @ExpLevel 
                                    WHERE Username = @Username";
                }

                using (SqlCommand cmd = new SqlCommand(updateQuery, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Phone", txtPhone.Text.Trim());
                    cmd.Parameters.AddWithValue("@PreferredStyle", ddlStyle.SelectedValue);
                    cmd.Parameters.AddWithValue("@ExpLevel", expLevel);
                    cmd.Parameters.AddWithValue("@Username", username);

                    if (changingPassword)
                        cmd.Parameters.AddWithValue("@NewPassword", newPass);

                    try
                    {
                        cmd.ExecuteNonQuery();
                        ShowMessage("Profile updated successfully!", false);

                        txtCurrentPass.Text = "";
                        txtNewPass.Text = "";
                        txtConfirmNewPass.Text = "";
                    }
                    catch (Exception ex)
                    {
                        ShowMessage("SYSTEM ERROR: " + ex.Message, true);
                    }
                }
            }
        }

        private void ShowMessage(string message, bool isError)
        {
            lblMessage.Text = message;
            lblMessage.CssClass = isError
                ? "d-block text-center text-danger small fw-bold mb-3"
                : "d-block text-center text-success small fw-bold mb-3";
        }
    }
}