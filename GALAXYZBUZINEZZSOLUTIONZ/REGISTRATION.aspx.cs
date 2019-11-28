using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GALAXYZBUZINEZZSOLUTIONZ
{
    public partial class REGISTRATION: System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            lblRegisteredUsers.Text = "Registered Users: " + Application["userCount"].ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Session["FirstName"] = txtFirstName.Text; //set firstname session variable
            Session["LastName"] = txtLastName.Text; //set lastname session variable

            int uCount = (int)Application["userCount"];
            uCount++;
            Application["userCount"] = uCount;


            Response.Redirect("~/HOME.aspx"); //go to welcome page
        }
    }
}