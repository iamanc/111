using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LuongVuAnhNga_1324
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        ketnoi kn= new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return; //load lại trang
            string q = "select * from LoaiHang"; //viết câu lệnh sql
            try 
            { 
                //SqlDataAdapter da = new SqlDataAdapter(q, con); //tạo dataadapter
                //DataTable dt = new DataTable(); //tạo datatable
                //da.Fill(dt); //đổ dữ liệu vào dt
                this.DataList1.DataSource = kn.laydata(q); //gán dữ liệu nguồn cho datalist1
                this.DataList1.DataBind(); //cập nhật dữ liệu
            }
            catch(SqlException ex) 
            {
                Response.Write(ex.Message);
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string maloai = ((LinkButton)sender).CommandArgument;
            Context.Items["ml"] = maloai;
            Server.Transfer("sanpham.aspx");
        }

       
    }
}