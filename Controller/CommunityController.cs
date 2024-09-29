using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Handler;
using Worksphere.Model;
using Worksphere.Repository;

namespace Worksphere.Controller
{
    public class CommunityController
    {
        public static List<Community> getAllCommunity()
        {
            return CommunityHandler.getAllCommunity();
        }

        public static Boolean ValidateDescription(String desc)
        {
            if (desc == null)
            {
                return false;
            }
            return true;
        }

        public static void AddCommunity(String apId, String emId, String description)
        {
            CommunityHandler.AddCommunity(apId, emId, description);
        }
    }
}