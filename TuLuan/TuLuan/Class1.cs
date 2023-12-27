using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;

namespace TuLuan
{
    
    public class Class1
    {
        SqlConnection con;

        private void layketnoi()
        {
            con = new SqlConnection( @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\KTTMDT\TuLuan\TuLuan\App_Data\Database1.mdf;Integrated Security=True");
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
                layketnoi();
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