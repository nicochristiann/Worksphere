using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Factory;
using Worksphere.Handler;
using Worksphere.Model;

namespace Worksphere.Repository
{
    public class ApplicantRepository
    {
        private static WorksphereDBEntities db = DatabaseSingleton.GetInstance();

        public static string getLastID()
        {
            return (from id in db.Applicants1 select id.ApplicantID).ToList().LastOrDefault();
        }
        public static void registerApplicant(string name, int age, string email, string password,
            string phoneNumber, string description, string pp)
        {
            Applicants newApplicant = ApplicantFactory.Create(name, age, email, password, phoneNumber, description, pp);
            db.Applicants1.Add(newApplicant);
            db.SaveChanges();
            return;
        }

        public static Applicants getApplicant (string email, string password)
        {
            return (from u in db.Applicants1 where u.Email==email && u.Password==password select u).FirstOrDefault();
        }

        public static Applicants getUserByID (string id)
        {
            return (from a in db.Applicants1 where a.ApplicantID.Equals(id) select a).FirstOrDefault();
        }

       
    }
}