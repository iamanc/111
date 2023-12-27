using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace WebApplication1
{
    public class ketnoi
    {
        SqlConnection con;
        private void laykn()
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\buihu\Downloads\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();
        }
        private void dongkn()
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
        public DataTable laydata(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                laykn();
                SqlDataAdapter adap = new SqlDataAdapter(sql, con);
                adap.Fill(dt);
            }
            catch
            {
                dt = null;
            }
            finally
            {
                dongkn();
            }
            return dt; 
        }
    }
}