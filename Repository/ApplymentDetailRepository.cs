using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Factory;
using Worksphere.Model;

namespace Worksphere.Repository
{
    public class ApplymentDetailRepository
    {

        private static WorksphereDBEntities db = DatabaseSingleton.GetInstance();

        public static string getLastID()
        {
            return (from id in db.ApplymentDetails select id.ApplymentID).ToList().LastOrDefault();
        }
        public static List<ApplymentDetail> getApplymentByWorkID(string id)
        {
            return (from d in db.ApplymentDetails where d.WorkID.Equals(id) select d).ToList();
        }

        public static ApplymentDetail getApplymentByID(string id)
        {
            return (from d in db.ApplymentDetails where d.ApplymentID.Equals(id) select d).FirstOrDefault();
        }
        public static void addApplyment(string appID, string workID)
        {
            ApplymentDetail applymentDetail = ApplymentDetailFactory.Create(appID, workID);
            db.ApplymentDetails.Add(applymentDetail);
            db.SaveChanges();
        }

        public static void changeStatus(string stats, string appID)
        {
            ApplymentDetail detail = getApplymentByID(appID);
            detail.Status = stats;
            db.SaveChanges();
        }
    }
}