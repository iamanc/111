using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace quanlybanhoa_123
{
    public partial class sanpham : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q;
            if (Context.Items["ml"] == null)
            {
                q = "select * from HOA";
            }
            else
            {
                string maloai = Context.Items["ml"].ToString();
                q = "select * from HOA where MaLoai= '" + maloai + "'";
            }
            try
            {
                this.DataList1.DataSource = kn.laydata(q);
                this.DataList1.DataBind();
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
            Server.Transfer("chitiet.aspx");
        }
    }
}