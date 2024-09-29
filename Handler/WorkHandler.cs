using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Model;
using Worksphere.Repository;

namespace Worksphere.Handler
{
    public class WorkHandler
    {
        public static String AddWork(String WorkTitle, String WorkDescription, String WorkType, String Keyword,
            String CategoryID, String EmployerID, int Salary)
        {
            WorkRepository.AddWork(WorkTitle, WorkDescription, WorkType, Keyword, CategoryID, EmployerID, Salary);
            return "Success";
        }

        public static List<Work> getWorkByEmployerID(string empID)
        {
            return WorkRepository.getWorkByEmployerID(empID);
        }

        public static List<Work> getAllWork()
        {
            return WorkRepository.getAllWork();
        }

        public static Work getWorkbyID(string id)
        {
            return WorkRepository.getWorkbyID(id);
        }
    }
}