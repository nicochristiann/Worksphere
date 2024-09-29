using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Model;
using Worksphere.Repository;

namespace Worksphere.Factory
{
    public class ApplicantFactory
    {

        private static string getID()
        {
            string newID = "";

            string lastID = ApplicantRepository.getLastID();

            if (lastID == null)
            {
                newID = "AP001";
                return newID;
            }

            int num = Convert.ToInt32(lastID.Substring(2)) + 1;
            newID = "AP" + num.ToString("D3");

            return newID;
        }
        public static Applicants Create (string name, int age, string email, string password,
            string phoneNumber, string description, string pp)
        {
            Applicants applicant = new Applicants();
            applicant.ApplicantID = getID();
            applicant.Name = name;
            applicant.Age = age;
            applicant.Email = email;
            applicant.Password = password;
            applicant.PhoneNumber = phoneNumber;
            applicant.Description = description;
            applicant.ProfilePicture = null;

            return applicant;
        }
    }
}