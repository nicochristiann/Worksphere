using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Repository;

namespace Worksphere.Handler
{
    public class CategoryHandler
    {
        public static String GetCategoryIDByName(String CategoryName)
        {
            return CategoryRepository.GetCategoryIDByName(CategoryName);
        }

        public static String GetCategoryNameByID(String CategoryID)
        {
            return CategoryRepository.GetCategoryNameByID(CategoryID);
        }
    }
}