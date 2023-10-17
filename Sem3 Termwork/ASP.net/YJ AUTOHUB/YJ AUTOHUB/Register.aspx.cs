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
            Response.Redirect("~/Signin.aspx");
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\iamja\OneDrive\Documents\Autohub.mdf;Integrated Security=True;Connect Timeout=30";
            string insertQuery = "INSERT INTO [User] (Name, Email, Mobile, City, Pincode, Password, Gender) VALUES (@Name, @Email, @Mobile, @City, @Pincode, @Password, 'Male')";

            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    using (SqlCommand command = new SqlCommand(insertQuery, con))
                    {
                        // Use parameterized queries to prevent SQL injection.
                        command.Parameters.AddWithValue("@Name", txtName.Text);
                        command.Parameters.AddWithValue("@Email", txtEmail.Text);
                        command.Parameters.AddWithValue("@Mobile", txtMobile.Text);
                        command.Parameters.AddWithValue("@City", txtCity.Text);
                        command.Parameters.AddWithValue("@Pincode", txtPincode.Text);
                        command.Parameters.AddWithValue("@Password", txtPassword.Text);

                        command.ExecuteNonQuery();
                        // Use ClientScript to display an alert message.
                        ClientScript.RegisterStartupScript(this.GetType(), "RegistrationComplete", "alert('Record inserted successfully!');", true);

                        Response.Redirect("~/SignIn.aspx");
                    }
                }
            }
            catch (Exception ex)
            {
                // Use ClientScript to display an error message.
                ClientScript.RegisterStartupScript(this.GetType(), "RegistrationError", "alert('" + ex.Message + "');", true);
            }
        }


    }
}
