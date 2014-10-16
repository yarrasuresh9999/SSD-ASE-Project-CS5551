using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;

namespace SSDRestService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    public class Service1 : IService1
    {
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }
        [WebInvoke(Method = "GET", ResponseFormat = WebMessageFormat.Json, UriTemplate = "insertInfo/{id}/{password}/{name}/{mobile}/{email}/{address}/{sstatus}")]
        public void InsertInfo(string id,string password,string name, string mobile, string email, string address, string sstatus)
        {
            
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();        
            SqlCommand cmd = new SqlCommand
                ("Insert into student(studentid,password,studentname,mobile,email,address,status) values('" + id + "','" + password + "','" + name + "','" + mobile + "','" + email + "','" + address + "','" +sstatus + "')", conn);

            
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            
            conn.Close();


            
        }
        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
            {
                throw new ArgumentNullException("composite");
            }
            if (composite.BoolValue)
            {
                composite.StringValue += "Suffix";
            }
            return composite;
        }
    }
    public class Student
    {

        public string id { get; set; }
        public string password { get; set; }
        public string Name { get; set; }
        public string mobile { get; set; }
        public string email { get; set; }
        public string address { get; set; }
        public string sstatus { get; set; }

    }
}
