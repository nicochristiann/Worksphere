using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Handler;
using Worksphere.Model;

namespace Worksphere.Controller
{
    public class WorkController
    {
        public static String AddWork(String WorkTitle, String WorkDescription, String WorkType, String Keyword,
            String CategoryID, String EmployerID, int Salary)
        {
            return WorkHandler.AddWork(WorkTitle, WorkDescription, WorkType, Keyword, CategoryID, EmployerID, Salary);
        }

        public static List<Work> getWorkByEmployerID (string empID)
        {
            return WorkHandler.getWorkByEmployerID(empID);
        }

        public static List<Work> getAllWork()
        {
            return WorkHandler.getAllWork();
        }

        public static Work getWorkbyID (string id)
        {
            return WorkHandler.getWorkbyID(id);
        }
    }
}