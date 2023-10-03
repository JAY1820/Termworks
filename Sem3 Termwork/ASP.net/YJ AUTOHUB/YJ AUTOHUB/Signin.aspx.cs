using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace YJ_AUTOHUB
{
    public partial class Signin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=YjAutohub;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False;";

            // Define the SELECT query to retrieve user data based on the entered email
            string query = "SELECT Email, Password FROM Users WHERE Email = @Email";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Open the database connection
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        object txtEmail = null;
                        string userEmail = txtEmail.Text.Trim();

                        command.Parameters.AddWithValue("@Email", userEmail);

                        // Execute the query and retrieve the user's data
                        SqlDataReader reader = command.ExecuteReader();

                        while (reader.Read())
                        {
                            string storedPasswordHash = reader["Password"].ToString();

                            bool passwordMatch = VerifyPassword(txtPassword.Text, storedPasswordHash);

                            if (passwordMatch)
                            {
                                // Passwords match; allow access
                                // Redirect the user to the dashboard or another page
                                Response.Redirect("~/Default.aspx");
                            }
                            else
                            {
                                object lblError = null;
                                // Passwords do not match; display an error message
                                lblError.Text = "Invalid email or password. Please try again.";
                            }
                        }

                        reader.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions (e.g., display an error message or log the error).
                lblError.Text = "An error occurred: " + ex.Message;
            }
        }

        // You should implement a secure password verification function here
        private bool VerifyPassword(string enteredPassword, string storedPasswordHash)
        {
           

            return false; 
        }
    }
}
