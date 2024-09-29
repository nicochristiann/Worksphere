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
    public partial class JobDetail : System.Web.UI.Page
    {
        public static List<Work> workList = new List<Work>();
        public static int count = 0;
        public static Work detail = new Work();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            workList = WorkController.getAllWork();
            count = workList.Count;
            detail = WorkController.getWorkbyID(id);
        }

        protected void Btn_Find_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string appID = (String)Session["users"];
            string id = Request.QueryString["id"];
            ApplymentDetailController.addApplyment(appID, id);
            Response.Write("<script>alert('Succesfully Applied')</script>");
        }
    }
}