using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Model;
using Worksphere.Repository;

namespace Worksphere.Handler
{
    public class CommunityHandler
    {
        public static List<Community> getAllCommunity()
        {
           return CommunityRepository.getAllCommunity();
        }

        public static void AddCommunity(String apId, String emId, String description)
        {
            CommunityRepository.AddCommunity(apId, emId, description);
        }
    }
}