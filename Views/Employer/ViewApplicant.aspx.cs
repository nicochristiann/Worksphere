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
    public partial class ViewApplicant : System.Web.UI.Page
    {
        public static List<ApplymentDetail> listApplicant = new List<ApplymentDetail>();
        public static string appID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string workID = Request.QueryString["id"];
            listApplicant = ApplymentDetailController.getApplymentByWorkID(workID);
        }

        protected void BtnAccept_Click(object sender, EventArgs e)
        {
            ApplymentDetailController.changeStatus("Accept",appID);
        }

        protected void BtnReject_Click(object sender, EventArgs e)
        {
            ApplymentDetailController.changeStatus("Rejected",appID);
        }
    }
}