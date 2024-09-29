using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Handler;
using Worksphere.Model;

namespace Worksphere.Controller
{
    public class ApplymentDetailController
    {
        public static List<ApplymentDetail> getApplymentByWorkID(string id)
        {
            return ApplymentDetailHandler.getApplymentByWorkID(id);
        }

        public static void addApplyment(string appID, string workID)
        {
            ApplymentDetailHandler.addApplyment(appID, workID);
        }

        public static void changeStatus (string stats, string appID)
        {
            ApplymentDetailHandler.changeStatus(stats, appID);
        }
    }
}