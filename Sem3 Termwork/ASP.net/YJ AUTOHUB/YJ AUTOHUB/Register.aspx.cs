using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YJ_AUTOHUB
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Define the connection string
            string connectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=YjAutohub;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False;";

            // Define the INSERT query
            string insertQuery = "INSERT INTO Users (Name, Email, Mobile, City, Pincode, Password) VALUES (@Name, @Email, @Mobile, @City, @Pincode, @Password)";
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Open the database connection
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(insertQuery, connection))
                    {
                        // Set the parameter values
                        command.Parameters.AddWithValue("@Name", txtName.Text);
                        command.Parameters.AddWithValue("@Email", txtEmail.Text);
                        command.Parameters.AddWithValue("@Mobile", txtMobile.Text);
                        command.Parameters.AddWithValue("@City", txtCity.Text);
                        command.Parameters.AddWithValue("@Pincode", txtPincode.Text);
                        command.Parameters.AddWithValue("@Password", txtPassword.Text); // Remember to hash and salt the password for security.



                        // Execute the INSERT query
                        int rowsAffected = command.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Registration successful, you can redirect the user to a success page or perform other actions.
                            Response.Redirect("~/Signin.aspx");
                        }
                        else
                        {
                            // Registration failed, handle the error (e.g., display an error message).
                        }
                    }
                }
            }
            catch (Exception)
            {
                // Handle any exceptions (e.g., display an error message or log the error).
            }

        }

    }
}