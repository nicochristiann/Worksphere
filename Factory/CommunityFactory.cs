using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Model;
using Worksphere.Repository;

namespace Worksphere.Factory
{
    public class CommunityFactory
    {
        private static string getID()
        {
            string newID = "";

            string lastID = CommunityRepository.getLastID();

            if (lastID == null)
            {
                newID = "AP001";
                return newID;
            }

            int num = Convert.ToInt32(lastID.Substring(2)) + 1;
            newID = "CO" + num.ToString("D3");

            return newID;
        }

        public static Community Create(String apId, String epId, String description)
        {
            Community community = new Community();
            community.CommunityID = getID();

            if (!apId.Equals(""))
            {
                community.ApplicantID = apId;
            }
            else if (!epId.Equals(""))
            {
                community.EmployerID = epId;
            }

            community.Description = description;

            return community;
        }
    }
}