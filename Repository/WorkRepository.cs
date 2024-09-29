using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using Worksphere.Factory;
using Worksphere.Handler;
using Worksphere.Model;

namespace Worksphere.Repository {
    public class WorkRepository {
        private static WorksphereDBEntities db = DatabaseSingleton.GetInstance();

        public static string getLastID() {
            return (from id in db.Works select id.WorkID).ToList().LastOrDefault();
        }

        public static void AddWork(String WorkTitle, String WorkDescription, String WorkType, String Keyword,
            String CategoryID, String EmployerID, int Salary)
        {
            Work work = WorkFactory.Create(WorkTitle, WorkDescription, WorkType, Keyword, CategoryID, EmployerID, Salary);
            db.Works.Add(work);
            db.SaveChanges();
            return;
        }

        public static List<Work> getWorkByEmployerID(string empID)
        {
            return (from w in db.Works where w.EmployerID.Equals(empID) select w).ToList();
        }

        public static List<Work> getAllWork()
        {
            return (from w in db.Works
                    select w).ToList();
        }

        public static Work getWorkbyID(string id)
        {
            return (from w in db.Works
                    where w.WorkID.Equals(id)
                    select w).FirstOrDefault();
        }
    }
}