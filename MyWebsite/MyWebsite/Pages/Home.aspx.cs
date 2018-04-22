using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebsite.Pages
{
    public partial class Home : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve user details from a session saved in the login file
            User user = (User)Session["currentUser"];

            // Build the login message
            string foreName = user.forename;
            string surName = user.surname;
            string userName = user.username;
            string welcomeMessage = "Welcome " + foreName + " " + surName + ". Please select an option";
            lblHeader.Text = welcomeMessage;
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Pages/Login.aspx");           
        }
    }
}