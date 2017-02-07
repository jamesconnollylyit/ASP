using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebsite.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            var username = tbxUsername.Text;
            var password = tbxPassword.Text;           
            lblMessage.Text = "User details entered are " + username + " " + password;          
        }
    }
}