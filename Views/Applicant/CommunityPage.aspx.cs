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
    public partial class CommunityPage : System.Web.UI.Page
    {
        public String name;
        public List<Community> communityList = new List<Community>();
        Applicants ap;
        Employers em;
        String apId, emId;
        protected void Page_Load(object sender, EventArgs e)
        {
            String id = (String)Session["users"];
            
            if (id.StartsWith("AP"))
            {
                ap = ApplicantController.getUserByID(id);
                apId = ap.ApplicantID;
                name = ap.Name;
            }
            else if (id.StartsWith("EM"))
            {
                em = EmployerController.GetEmployerByID(id);
                emId = em.EmployerID;
                name = em.UserName;
            }

            communityList = CommunityController.getAllCommunity();
        }

        protected void Btn_Post_Click(object sender, EventArgs e)
        {
            String description = Txt_Box.Text;

            if (CommunityController.ValidateDescription(description))
            {
                CommunityController.AddCommunity(apId,emId, description);
                Response.Redirect("~/Views/Applicant/CommunityPage.aspx");
            }
            else
            {
                return;
            }
        }
    }
}