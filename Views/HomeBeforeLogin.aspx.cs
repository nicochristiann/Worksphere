using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Worksphere.Views
{
    public partial class HomeBeforeLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Views/HomeBeforeLogin.aspx");
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Views/Applicant/ApplicantLogin.aspx");
        }
    }
}