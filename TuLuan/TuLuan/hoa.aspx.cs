using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace TuLuan
{
    public partial class hoa : System.Web.UI.Page
    {
        Class1 kn = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q;
            if (Context.Items["ml"] == null)
                q = "select * from Hoa";
            else
            {
                string maloai = Context.Items["ml"].ToString();
                q = "select * from Hoa where MaLoai = '" + maloai + "'";
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

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string mahoa = ((LinkButton)sender).CommandArgument;
            Context.Items["mh"] = mahoa;
            Server.Transfer("chitiet.aspx");
        }
    }
}