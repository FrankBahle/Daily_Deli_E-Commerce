using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Daily_Deli_E_Commerce.DailyDeliAPI;
namespace Daily_Deli_E_Commerce
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Check if passwords match
            if (password.Value != confirmPassword.Value)
            {
                statusLabel.Style["color"] = "red";
                statusLabel.InnerText = "Passwords do not Match!";

                return;
            }

            //Create the actual User

            User newUser = new User 
            {
            };
        }
    }
}