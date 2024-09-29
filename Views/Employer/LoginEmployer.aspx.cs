using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Worksphere.Controller;
using Worksphere.Model;

namespace Worksphere.Views.Employer
{
    public partial class LoginEmployer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string email = TbEmail.Text;
            string password = TbPassword.Text;

            Employers employer = EmployerController.LoginEmployer(email, password);

            if (employer != null)
            {
                Session["users"] = employer.EmployerID;
                Response.Redirect("/Views/Employer/HomeEmployer.aspx");
            }
            else
            {
                LblError.Text = "Email or Password is wrong";
            }
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Employer/RegisterEmployer.aspx");
        }

        protected void Btn_Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Views/HomeBeforeLogin.aspx");
        }

        protected void Btn_Login_Header_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Views/Applicant/ApplicantLogin.aspx");
        }
    }
}