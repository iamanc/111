using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace LuongVuAnhNga_1324
{
    public class ketnoi
    {
        SqlConnection con; //khai báo biến toàn cục
        // tạo phương thức kết nối vớ database
        private void layketnoi()
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\02_IS385_LuongVuAnhNga\LuongVuAnhNga_1324\LuongVuAnhNga_1324\App_Data\QLBH.mdf;Integrated Security=True");
            con.Open(); //mở kết nối
        }
        private void dongketnoi()
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
        //tạo hàm lấy dữ liệu có kiểu dữ liệu là database
        //giá trị truyền vào là một chuỗi sql
        public DataTable laydata(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                layketnoi();//mở
                SqlDataAdapter adap = new SqlDataAdapter(sql, con);
                adap.Fill(dt);// đổ dữ liệu vào dt
            }
            catch 
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