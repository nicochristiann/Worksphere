using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using Worksphere.Controller;
using Worksphere.Model;

namespace Worksphere.Views.Employer
{
    public partial class EmployerProfile : System.Web.UI.Page
    {
        private Employers employer;
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = "";
            if (Session["users"] != null)
            {
                id = (string)Session["users"];
            }

            if (id.StartsWith("EM"))
            {
                employer = EmployerController.GetEmployerByID(id);
                CompanyName.Text = employer.CompanyName;
                Type.Text = employer.CompanyType;
                Email.Text = employer.CompanyEmail;
                Username.Text = employer.UserName;
            }
            else
            {
                Response.Redirect("~/Views/Applicant/ApplicantLogin.aspx");
            }
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Session["users"] = null;
            Response.Redirect("~/Views/Applicant/ApplicantLogin.aspx");
        }
    }
}