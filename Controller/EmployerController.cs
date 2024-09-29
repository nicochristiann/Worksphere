using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Handler;
using Worksphere.Model;

namespace Worksphere.Controller
{
    public class EmployerController
    {
        public static string companyNameValidation (string companyName)
        {
            string error = "";
            if (companyName.Equals("")) {
                error = "Company Name must be filled";
            }

            return error;
        }

        public static string emailValidation (string email)
        {
            string error = "";
            if (email.Equals(""))
            {
                error = "Email must be filled";
            } else if (!email.EndsWith("@gmail.com"))
            {
                error = "Email must end with @gmail.com";
            }

            return error;
        }

        public static string nameValidation (string name)
        {
            string error = "";

            if (name.Equals(""))
            {
                error = "Name must be filled";
            }

            return error;
        }

        public static string passValidation (string pass)
        {
            string error = "";

            if (pass.Equals(""))
            {
                error = "Password must be filled";
            } else if (pass.Length < 5)
            {
                error = "Password must contain at least 5 characters";
            }

            return error;
        }

        public static string addressValidation (string address)
        {
            string error = "";

            if (address.Equals(""))
            {
                error = "Company Address must be filled";
            }

            return error;
        }

        public static string phoneNumberValidation(string phoneNumber)
        {
            string error = "";

            if (phoneNumber.Equals(""))
            {
                error = "Phone Number must be filled";
            }
            else if (phoneNumber.Length < 6)
            {
                error = "Phone Number must be valid";
            }

            return error;
        }

        public static string typeValidation(string type)
        {
            string error = "";

            if (type.Equals(""))
            {
                error = "Company Type must be filled";
            }

            return error;
        }

        public static string RegisterEmployer(string CompanyName, string email, string name, string password, string address, string phoneNumber,string type, string logo)
        {
            string error = companyNameValidation(CompanyName);
            if(error.Equals("")) error = emailValidation(email);
            if(error.Equals("")) error = nameValidation(name);
            if(error.Equals("")) error = passValidation(password);
            if(error.Equals("")) error = addressValidation(address);
            if(error.Equals("")) error = phoneNumberValidation(phoneNumber);
            if(error.Equals("")) error = typeValidation(type);
            if(error.Equals("")) error = EmployerHandler.doRegister(CompanyName, email, name, password, address, phoneNumber,type, null);

            return error;
        }

        public static Employers LoginEmployer(String email, string password)
        {
            Employers employer = EmployerHandler.doLogin(email, password);
            return employer;
        }

        public static Employers GetEmployerByID(String EmployerID)
        {
            return EmployerHandler.GetEmployerByID(EmployerID);
        }
    }
}