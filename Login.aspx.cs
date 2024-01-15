using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant_Management_System
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string email = "yo@gmail.com";
        string password = "yoyoyo111";
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string _email = txtBoxEmail.Text;
            string _pwd = txtBoxPassword.Text;

            if (String.Compare(_email, email) == 0 && String.Compare(_pwd, password) == 0)
            {
                // add into the session variable...
                Session["email"] = email;
                //Session["password"] = password;

                // redirect to the dashboard...
                Response.Redirect("Dashboard.aspx");
            }
        }
    }
}