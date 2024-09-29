using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Model;
using Worksphere.Repository;

namespace Worksphere.Factory
{
    public class EmployerFactory
    {
        private static string getID()
        {
            string newID = "";

            string lastID = EmployerRepository.getLastID();

            if (lastID == null)
            {
                newID = "EM001";
                return newID;
            }

            int num = Convert.ToInt32(lastID.Substring(2)) + 1;
            newID = "EM" + num.ToString("D3");

            return newID;
        }
        public static Employers Create(string CompanyName, string email, string name, string password, string address, string phoneNumber,string type, string logo)
        {
            Employers newEmployer = new Employers();
            newEmployer.EmployerID = getID();
            newEmployer.CompanyName = CompanyName;
            newEmployer.CompanyEmail = email;
            newEmployer.UserName = name;
            newEmployer.Password = password;
            newEmployer.CompanyAddress = address;
            newEmployer.PhoneNumber = phoneNumber;
            newEmployer.CompanyType = type;
            newEmployer.CompanyLogo = null;

            return newEmployer;
        }
    }
}