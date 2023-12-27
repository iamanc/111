﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LuongVuAnhNga_1324
{
    public partial class chitiet : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q; //câu lệnh sql
            if (Context.Items["mh"] == null)
                q = "select * from MatHang";
            else
            {
                string mahang= Context.Items["mh"].ToString();
                q = "select * from MatHang where MaHang = '" + mahang + "'";
            }
            try
            {
              //  SqlDataAdapter da = new SqlDataAdapter(q, con); //tạo dataadapter
              //  DataTable dt = new DataTable(); //tạo datatable
              //  da.Fill(dt); //đổ dữ liệu vào dt
                this.DataList1.DataSource = kn.laydata(q); //gán dữ liệu nguồn cho datalist1
                this.DataList1.DataBind(); //cập nhật dữ liệu
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}