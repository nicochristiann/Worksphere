using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Worksphere.Controller;
using Worksphere.Model;

namespace Worksphere.Views.Applicant
{
    public partial class ApplicantProfile : System.Web.UI.Page
    {
        private Applicants applicant = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            string id = "";
            if (Session["users"] != null)
            {
                id = (string)Session["users"];
            }

            if (id.StartsWith("AP"))
            {
                applicant = ApplicantController.getUserByID(id);
                Name.Text = applicant.Name;
                AgeGender.Text = applicant.Age + ", " + "Male";
                About.Text = applicant.Description;
                PhoneNumber.Text = applicant.PhoneNumber;
                Email.Text = applicant.Email;
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