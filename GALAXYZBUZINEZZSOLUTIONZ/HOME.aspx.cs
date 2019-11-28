using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GALAXYZBUZINEZZSOLUTIONZ
{
    public partial class HOME: System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            lblWelcome.Text = "HOME " + (String)this.Session["FirstName"] + " " + (String)this.Session["LastName"] + "!";
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/REGISTRATION.aspx"); //go to registration page
        }
    }
}