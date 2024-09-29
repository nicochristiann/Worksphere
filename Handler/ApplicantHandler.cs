using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Model;
using Worksphere.Repository;

namespace Worksphere.Handler
{
    public class ApplicantHandler
    {
        public static string doRegister (string name, string age, string email, string password,
            string phoneNumber, string description, string pp)
        {
            ApplicantRepository.registerApplicant(name, Convert.ToInt32(age), email, password, phoneNumber, description, pp);
            return "Success";
        }

        public static Applicants doLogin(string email, string password)
        {
            Applicants applicant = ApplicantRepository.getApplicant(email,password);
            return applicant;
            
        }

        public static Applicants getUserByID (string id)
        {
            return ApplicantRepository.getUserByID(id);
        }

        
    }
}