using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Handler;

namespace Worksphere.Controller
{
    public class CategoryController
    {
        public static String GetCategoryIDByName(String CategoryName)
        {
            return CategoryHandler.GetCategoryIDByName(CategoryName);
        }

        public static String GetCategoryNameByID(String CategoryID)
        {
            return CategoryHandler.GetCategoryNameByID(CategoryID);
        }
    }
}