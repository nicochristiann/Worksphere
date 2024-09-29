using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Factory;
using Worksphere.Model;

namespace Worksphere.Repository
{
    public class CommunityRepository
    {
        private static WorksphereDBEntities db = DatabaseSingleton.GetInstance();

        public static string getLastID()
        {
            return (from id in db.Communities select id.CommunityID).ToList().LastOrDefault();
        }

        public static List<Community> getAllCommunity()
        {
            return (from x in db.Communities select x).ToList();
        }

        public static void AddCommunity(String apId, String emId, String description)
        {
           Community c = CommunityFactory.Create(apId, emId, description);
            db.Communities.Add(c);
            db.SaveChanges();
        }
    }
}