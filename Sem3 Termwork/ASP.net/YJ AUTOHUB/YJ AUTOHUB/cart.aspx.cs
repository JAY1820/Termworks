using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YJ_AUTOHUB
{
    public partial class cart : System.Web.UI.Page
    {
        protected GridView GridView1;
        protected Label lblTotalPrice1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Products"] != null)
            {
                var products = Session["Products"] as ProductCart[];

                List<CartItem> cartItems = new List<CartItem>();
                decimal totalPrice = 0;

                foreach (var product in products)
                {
                    CartItem cartItem = new CartItem
                    {
                        Name = product.name,
                        Price = product.price.ToString(),
                        Quantity = product.qty.ToString()
                    };
                    cartItems.Add(cartItem);

                    // Calculate the total price for this product and add it to the overall total.
                    totalPrice += (product.price * product.qty);
                }

                GridView1.DataSource = cartItems;
                GridView1.DataBind();

                // Display the total price.
                lblTotalPrice.Text = "Total Price: ₹" + totalPrice.ToString("0.00");
            }
        }

        public class CartItem
        {
            public string Name { get; set; }
            public string Price { get; set; }
            public string Quantity { get; set; }
        }

        private bool IsUserLoggedIn()
        {
            // Check if the user is authenticated.
            return Session["User"] != null;
        }

        protected void btnBuyProduct_Click(object sender, EventArgs e)
        {
            if (IsUserLoggedIn())
            {
                Session["Products"] = null;

                Response.Write("<script>alert('Order placed successfully Thank you for shopping with us . You will be redirected Defualt page.')</script>");
                string script = "setTimeout(function(){ window.location.href = 'Default.aspx'; }, 1000);";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectScript", script, true);
            }
            else
            {
                string script = "alert('Please log in first.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "userNotLoggedIn", script, true);
            }
           

        }
    }
}
