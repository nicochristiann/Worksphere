using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Model;
using Worksphere.Repository;

namespace Worksphere.Factory {
    public class WorkFactory {

        private static string getID()
        {
            string newID = "";

            string lastID = WorkRepository.getLastID();

            if (lastID == null)
            {
                newID = "WO001";
                return newID;
            }

            int num = Convert.ToInt32(lastID.Substring(2)) + 1;
            newID = "WO" + num.ToString("D3");

            return newID;
        }
        public static Work Create(String WorkTitle, String WorkDescription, String WorkType,
            String Keyword, String CategoryID, String EmployerID, int Salary)
        {
            Work newWork = new Work();
            newWork.WorkID = getID();
            newWork.WorkTitle = WorkTitle;
            newWork.WorkDescription = WorkDescription;
            newWork.WorkType = WorkType;
            newWork.Keyword = Keyword;
            newWork.CategoryID = CategoryID;
            newWork.EmployerID = EmployerID;
            newWork.Salary = Salary;

            return newWork;
        }
    }
}