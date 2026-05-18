using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace DataControlsDemonstration.Services
{
    public class EmployeeService
    {
        string cs = ConfigurationManager.ConnectionStrings["EmployeeDBConnection"].ConnectionString;

        public DataTable GetEmployees()
        {
            string cs = ConfigurationManager.ConnectionStrings["EmployeeDBConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"SELECT 
                            E.EmployeeID,
                            E.FullName,
                            E.Email,
                            E.Mobile,
                            D.DepartmentName,
                            E.Salary,
                            E.IsActive
                         FROM Employees E
                         INNER JOIN Departments D 
                         ON E.DepartmentID = D.DepartmentID";

                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                return dt;
            }
        }
    }
}