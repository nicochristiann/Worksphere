using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Worksphere.Controller;

namespace Worksphere.Views.Applicant
{
    public partial class ApplicantRegister1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BtnBack.Visible = false;
        }

        protected void BtnUpload_Click(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            string name = TbName.Text;
            string age = TbAge.Text;
            string email = TbEmail.Text;
            string password = TbPassword.Text;
            string phoneNumber = TbPhoneNumber.Text;
            string description = TbDescription.Text;
            string pp = null;

            LblName.Text = ApplicantController.nameValidation(name);
            LblAge.Text = ApplicantController.ageValidation(age);
            LblEmail.Text = ApplicantController.emailValidation(email);
            LblPassword.Text = ApplicantController.passValidation(password);
            LblPhoneNumber.Text = ApplicantController.phoneValidation(phoneNumber);
            LblDescription.Text = ApplicantController.descriptionValidation(description);

            string error = ApplicantController.RegisterApplicant(name, age, email, password, phoneNumber, description, pp);
            if (error.Equals("Success"))
            {
                Response.Write("<script>alert('Data registered successfully')</script>");
                BtnBack.Visible = true;
            }
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Applicant/ApplicantLogin.aspx");
        }

        protected void Btn_Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Views/HomeBeforeLogin.aspx");
        }

        protected void Btn_Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Views/Applicant/ApplicantLogin.aspx");
        }
    }
}