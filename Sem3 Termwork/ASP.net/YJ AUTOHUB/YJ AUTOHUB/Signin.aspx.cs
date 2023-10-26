using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace YJ_AUTOHUB
{
    public partial class Signin : Page
    {
        SqlConnection con;
        readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\iamja\OneDrive\Documents\Autohub.mdf;Integrated Security=True;Connect Timeout=30";
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userEmail = txtLoginEmail.Text.Trim();

            // Define the SELECT query with a parameter
            string query = "SELECT Password FROM [User] WHERE Email = @userEmail";

            try
            {
                using (con = new SqlConnection(connectionString))
                {
                    con.Open();

                    using (SqlCommand command = new SqlCommand(query, con))
                    {
                        command.Parameters.AddWithValue("@userEmail", userEmail);

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                string storedPasswordHash = reader["Password"].ToString();
                                string enteredPassword = txtLoginPassword.Text.Trim();

                                // Use a secure password comparison method (e.g., hashing)
                                // if (SecurePasswordCompare(enteredPassword, storedPasswordHash))
                                if (enteredPassword == storedPasswordHash) // Temporary comparison method. Replace with SecurePasswordCompare when ready.
                                {
                                    // Set the session variable to indicate that the user is logged in
                                    Session["User"] = userEmail;

                                    Response.Write("<script>alert('Login success')</script>");
                                    Response.Redirect("~/Default.aspx");
                                }
                                else
                                {
                                    Response.Write("<script>alert('Invalid credentials')</script>");
                                }
                            }
                            else
                            {
                                Response.Write("<script>alert('User not found')</script>");
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
            protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Register.aspx");
        }
    }
}
