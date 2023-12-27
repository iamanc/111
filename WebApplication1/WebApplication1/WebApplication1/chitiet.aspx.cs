using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace WebApplication1
{
    public partial class chitiet : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q;
            if (Context.Items["mh"] == null)
                q = "select * from MatHang";
            else
            {
                string mahang = Context.Items["mh"].ToString();
                q = "select*from MatHang where MaHang ='" + mahang + "'";
            }
            try
            {
                //SqlDataAdapter da = new SqlDataAdapter(q, con);
                //DataTable dt = new DataTable();
                //da.Fill(dt);
                //this.DataList1.DataSource = dt;

                this.DataList1.DataSource = kn.laydata(q);
                this.DataList1.DataBind();
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}