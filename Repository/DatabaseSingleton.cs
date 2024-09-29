using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Worksphere.Model;

namespace Worksphere.Repository
{
    public class DatabaseSingleton
    {

        private static WorksphereDBEntities db = null;

        private DatabaseSingleton() { }

        public static WorksphereDBEntities GetInstance()
        {
            if (db == null)
            {
                db = new WorksphereDBEntities();
            }
            return db;
        }
    }
}