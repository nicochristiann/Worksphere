using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Factory;
using Worksphere.Model;

namespace Worksphere.Repository
{
    public class EmployerRepository
    {
        private static WorksphereDBEntities db = DatabaseSingleton.GetInstance();

        public static string getLastID()
        {
            return (from id in db.Employers1 select id.EmployerID).ToList().LastOrDefault();
        }
        public static void registerEmployer(string CompanyName, string email, string name,
            string password, string address, string phoneNumber,string type, string logo)
        {
            Employers newEmployer = EmployerFactory.Create(CompanyName, email, name, password, address, phoneNumber,type, null);
            db.Employers1.Add(newEmployer);
            db.SaveChanges();
            return;
        }

        public static Employers getEmployer(string email, string password)
        {
            return (from u in db.Employers1 where u.CompanyEmail == email && u.Password == password select u).FirstOrDefault();

        }

        public static Employers GetEmployerByID(String id)
        {
            return db.Employers1.FirstOrDefault(e => e.EmployerID.Equals(id));
        }
    }
}