using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Worksphere.Controller;

namespace Worksphere.Views.Employer
{
    public partial class RegisterEmployer1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BtnBack.Visible = false;
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            string CompanyName = TbCompanyName.Text;
            string CompanyEmail = TbEmail.Text;
            string name = TbName.Text;
            string password = TbPassword.Text;
            string address = TbAddress.Text;
            // string logo = null;
            string phoneNumber = TbPhoneNumber.Text;
            string CompanyType = TbType.Text;

            LblCompanyName.Text = EmployerController.companyNameValidation(CompanyName);
            LblEmail.Text = EmployerController.emailValidation(CompanyEmail);
            LblName.Text = EmployerController.nameValidation(name);
            LblPass.Text = EmployerController.passValidation(password);
            LblAddress.Text = EmployerController.addressValidation(address);
            LblPhoneNumber.Text = EmployerController.phoneNumberValidation(phoneNumber);
            LblType.Text = EmployerController.typeValidation(CompanyType);

            string error = EmployerController.RegisterEmployer(CompanyName, CompanyEmail, name, password, address, phoneNumber, CompanyType, null);

            if (error.Equals("Success"))
            {
                Response.Write("<script>alert('Data registered successfully')</script>");
                BtnBack.Visible = true;
            }
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Employer/LoginEmployer.aspx");
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