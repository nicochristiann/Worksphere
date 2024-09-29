    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Model;
using Worksphere.Repository;

namespace Worksphere.Factory
{
    public class ApplymentDetailFactory
    {
        private static string getID()
        {
            string newID = "";

            string lastID = ApplymentDetailRepository.getLastID();

            if (lastID == null)
            {
                newID = "AD001";
                return newID;
            }

            int num = Convert.ToInt32(lastID.Substring(2)) + 1;
            newID = "AD" + num.ToString("D3");

            return newID;
        }
        public static ApplymentDetail Create(string appID, string workID)
        {
            string id = getID();
            ApplymentDetail detail = new ApplymentDetail();
            detail.ApplymentID = id;
            detail.ApplicantID = appID;
            detail.WorkID = workID;
            detail.Status = "In Review";
            detail.ApplyDate = DateTime.Now;

            return detail;
        }
    }
}