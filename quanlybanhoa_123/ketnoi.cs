using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace quanlybanhoa_123
{
    public class ketnoi
    {
        SqlConnection con;
        private void layketnoi()
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\monhoc\KTTMDT\quanlybanhoa_123\quanlybanhoa_123\App_Data\qlbanhoa.mdf;Integrated Security=True");
            con.Open();
        }
        private void dongketnoi()
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
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                da.Fill(dt);
            }
            catch(SqlException ex)
            {
                dt = null; 
            }
            finally
            {
                dongketnoi();
            }
            return dt;
        }
    }
}