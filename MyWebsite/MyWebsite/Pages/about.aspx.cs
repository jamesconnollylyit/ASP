﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebsite.Pages
{
    public partial class about : System.Web.UI.Page
    {
        User user = new User();
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowUserDetails();
        }

        private void ShowUserDetails()
        {
            
           
            lblDetails.Text = user.username.ToString();
        }
    }
}