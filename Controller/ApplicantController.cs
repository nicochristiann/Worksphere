using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Factory;
using Worksphere.Handler;
using Worksphere.Model;

namespace Worksphere.Controller
{
    public class ApplicantController
    {

        public static string nameValidation (string name)
        {
            string error = "";
            if (name.Equals(""))
            {
                error = "Name must be filled";
            }

            return error;
        }

        public static string ageValidation (string age)
        {
            string error = "";
            if (age.Equals(""))
            {
                error = "Age must be filled";
            } else
            {
                string umur1 = age;
                int umur = Convert.ToInt32(umur1);
                if (umur < 13)
                {
                    error = "You must be 13 years old";
                }
            }

            return error;
        }

        public static string emailValidation (string email)
        {
            string error = "";

            if (email.Equals(""))
            {
                error = "Email must be filled";
            }
            else if (!email.EndsWith("@gmail.com"))
            {
                error = "Email must end with @gmail.com";
            }

            return error;
        }

        public static string passValidation (string password)
        {
            string error = "";

            if (password.Equals(""))
            {
                error = "Password must be filled";
            }
            else if (password.Length < 5)
            {
                error = "Password must contain at least 5 characters";
            }


            return error;
        }

        public static string phoneValidation (string phoneNumber)
        {
            string error = "";

            if (phoneNumber.Equals(""))
            {
                error = "Phone Number must be filled";
            }
            else if (phoneNumber.Length < 6)
            {
                error = "Phone Number is not valid";
            }

            return error ;
        }

        public static string descriptionValidation (string description)
        {
            String error = "";

            if (description.Equals(""))
            {
                error = "Description must be filled";
            }

            return error;
        }

        public static string RegisterApplicant(string name, string age, string email, string password,
            string phoneNumber, string description, string pp)
        {
            string error = nameValidation(name);
            if (error.Equals("")) error = ageValidation(age);
            if (error.Equals("")) error = emailValidation(email);
            if (error.Equals("")) error = passValidation(password);
            if (error.Equals("")) error = phoneValidation(phoneNumber);
            if (error.Equals("")) error = descriptionValidation(description);
            if (error.Equals("")) error = ApplicantHandler.doRegister(name,age,email,password,phoneNumber,description,pp);

            return error;
        }

        public static Applicants LoginApplicant (String email, string password)
        {
            Applicants applicant =  ApplicantHandler.doLogin(email,password);
            return applicant;
        }

        public static Applicants getUserByID (String id)
        {
            return ApplicantHandler.getUserByID(id);
        }

        
    }
}