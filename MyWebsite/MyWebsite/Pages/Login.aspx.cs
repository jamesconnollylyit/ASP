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
        User user = new User();
        Mall1Entities db = new Mall1Entities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private int CreateALog(int userID, string category, string description)
        {
            int saveSuccess = 0;
            try
            {
                Log log = new Log();
                log.UserID = userID;
                log.Category = category;
                log.Description = description;
                db.Logs.Add(log);
                saveSuccess = db.SaveChanges();
                if (saveSuccess == 0)
                {
                    lblSuccess.Text = "Error creating logs.";
                }
            }
            catch (Exception ex)
            {
                lblSuccess.Text = "Error in database " + ex.InnerException;
            }
            return (saveSuccess);
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            int saveSuccess = 0;
            bool authenticated = false;
            var username = tbxUsername.Text;
            var password = tbxPassword.Text;
            foreach (var record in db.Users.Where(t => t.username == username && t.userpassword == password))
            {
                authenticated = true;
                user = record;
            }
            // Cannot save record whilst inside a foreach loop. Must be completed outside the loop
            saveSuccess = CreateALog(Convert.ToInt16(user.user_id), "Login", "User " + user.username.ToString() + " authenticated successfully.");
            // saveSuccess indicates if the record has been saved successfully into the SQL database
            if (authenticated && saveSuccess == 1)
            {
                // Use a session state to store the current user.
                // See https://msdn.microsoft.com/en-us/library/ms178581.aspx for details
                HttpContext.Current.Session["currentUser"] = user;

                //Send user to the home page when authenticated
                Response.Redirect("~/pages/home.aspx");
            }
            else
            {
                // Show error message to user
                lblSuccess.Text = "Problem logging in. Pleae re-enter details.";
            }
        }
    }
}