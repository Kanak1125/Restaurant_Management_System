using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

namespace Restaurant_Management_System
{
    public partial class CustomerRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Access form data
                //string firstName = TxtBoxFirstName.Text;
                //string lastName = TxtBoxLastName.Text;
                //DateTime dateOfBirth = Calendar1.SelectedDate;
                //string address = TxtBoxAddress.Text;
                //string email = TxtBoxEmail.Text;
                //string gender = RadioButtonMale.Checked ? "Male" : "Female";

                Response.Redirect("Dashboard.aspx");
            }
        }
    }
}