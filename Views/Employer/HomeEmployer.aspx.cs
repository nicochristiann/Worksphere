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
    public partial class HomeEmployer : System.Web.UI.Page
    {
        public static string empID = "";
        public static List<Work> workList = new List<Work>();
        public static string workID = "";
        public static List<string> cateName = new List<string>();
        public static List<string> cateName2 = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            empID = (string)Session["users"];
            workList = WorkController.getWorkByEmployerID(empID);
            foreach(var w in workList)
            {
                cateName.Add(w.CategoryID);
            }
            foreach(var w in cateName)
            {
                cateName2.Add(CategoryController.GetCategoryNameByID(w));
            }
        }

        protected void Btn_AddJob_HomeEmployer_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Views/Employer/AddJob.aspx");
        }
    }
}