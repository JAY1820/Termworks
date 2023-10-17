using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YJ_AUTOHUB
{
    class ProductCart
    {
        public string name;
        public int price;
        public int qty;
    }
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void handleSession(string name, int price, int qty)
        {
            // Step 1: Retrieve the existing array from the session
            ProductCart[] existingProducts = Session["Products"] as ProductCart[];

            // Step 2: Create a new product and append it to the existing array
            ProductCart productCart = new ProductCart();
            productCart.name = name;
            productCart.qty = qty;
            productCart.price = price;

            if (existingProducts == null)
            {
                // If the session array is null, create a new array with the new product
                existingProducts = new ProductCart[] { productCart };
            }
            else
            {
                // If the session array already exists, append the new product
                existingProducts = existingProducts.Concat(new ProductCart[] { productCart }).ToArray();
            }

            // Step 3: Store the updated array back into the session
            Session["Products"] = existingProducts;
        }

        private bool IsUserLoggedIn()
        {
            // Check if the user is authenticated.
            return Session["User"] != null;
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            if (IsUserLoggedIn())
            {
                handleSession("Tata Nexon", 1200000, 1);
            }
            else
            {
                // User is not logged in, display an alert message.
                string script = "alert('Please log in first.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "userNotLoggedIn", script, true);
            }
        }

        protected void btnAddToCart_Click2(object sender, EventArgs e)
        {
            if (IsUserLoggedIn())
            {
                handleSession("Mahindra Thar", 1500000, 1);
            }
            else
            {
                string script = "alert('Please log in first.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "userNotLoggedIn", script, true);
            }
        }

        protected void btnAddToCart_Click3(object sender, EventArgs e)
        {
            if (IsUserLoggedIn())
            {
                handleSession("Tata Safari", 2000000, 1);
            }
            else
            {
                string script = "alert('Please log in first.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "userNotLoggedIn", script, true);
            }
        }

        protected void btnAddToCart_Click4(object sender, EventArgs e)
        {
            if (IsUserLoggedIn())
            {
                handleSession("Hero Splendor", 90000, 1);
            }
            else
            {
                string script = "alert('Please log in first.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "userNotLoggedIn", script, true);
            }
        }

        protected void btnAddToCart_Click5(object sender, EventArgs e)
        {
            if (IsUserLoggedIn())
            {
                handleSession("Splendor plus", 100000, 1);
            }
            else
            {
                string script = "alert('Please log in first.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "userNotLoggedIn", script, true);
            }
        }

        protected void btnAddToCart_Click6(object sender, EventArgs e)
        {
            if (IsUserLoggedIn())
            {
                handleSession("Splendor Xtec", 90000, 1);
            }
            else
            {
                string script = "alert('Please log in first.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "userNotLoggedIn", script, true);
            }
        }


        protected void btnAddToCart_Click7(object sender, EventArgs e)
        {
            if (IsUserLoggedIn())
            {
                handleSession("TVS Ntorq 125", 70000, 1);
            }
            else
            {
                string script = "alert('Please log in first.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "userNotLoggedIn", script, true);
            }
        }

        protected void btnAddToCart_Click8(object sender, EventArgs e)
        {
            if (IsUserLoggedIn())
            {
                handleSession("Honda Activa 125", 80000, 1);
            }
            else
            {
                string script = "alert('Please log in first.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "userNotLoggedIn", script, true);
            }
        }

        protected void btnAddToCart_Click9(object sender, EventArgs e)
        {
            if (IsUserLoggedIn())
            {
                handleSession("Iron Golden Honda", 90000, 1);
            }
            else
            {
                string script = "alert('Please log in first.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "userNotLoggedIn", script, true);
            }
        }
    }
}
