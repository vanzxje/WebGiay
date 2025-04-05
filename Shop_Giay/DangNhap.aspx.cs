using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Giay
{
    public partial class DangNhap : System.Web.UI.Page
    {
        DataClassesDataContext db = new DataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text != "" && txtPass.Text != "")
            {
                Session["username"] = txtUsername.Text;
                Session["Pass"] = txtPass.Text;
                var data = from q in db.CAUHINHs
                           where q.IdValue == "username"
                           && q.GiaTri == txtUsername.Text
                           select q;
                if (data != null && data.Count() > 0)
                {
                    var dt1 = from k in db.CAUHINHs
                              where k.IdValue == "password"
                              && k.GiaTri == txtPass.Text
                              select k;
                    if (dt1 != null && dt1.Count() > 0)
                    {
                        Response.Redirect("QuanLySanPham.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Kiểm tra lại username và password!!!')", true);

                    }
                }
            }
        }
    }
}