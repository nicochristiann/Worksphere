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
    public partial class SearchJob : System.Web.UI.Page
    {
        public static List<Work> workList = new List<Work>();
        public static int count = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            workList = WorkController.getAllWork();
            count = workList.Count;
        }

        protected void Btn_Find_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}