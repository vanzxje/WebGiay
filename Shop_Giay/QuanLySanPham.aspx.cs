using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Giay
{
    public partial class QuanLySanPham : System.Web.UI.Page
    {
        DataClassesDataContext db = new DataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckUser();
            if (!IsPostBack)
            {
                loadData();
            }
        }
        private void CheckUser()
        {
            if (Session["username"] != null && Session["username"].ToString() != "")
            {
                var data = from q in db.CAUHINHs
                           where q.IdValue == "username"
                           && q.GiaTri == Session["username"].ToString()
                           select q;
                if (data != null && data.Count() > 0)
                {
                    var dt1 = from k in db.CAUHINHs
                              where k.IdValue == "password"
                              && k.GiaTri == Session["Pass"].ToString()
                              select k;
                    if (dt1 != null && dt1.Count() > 0)
                    {

                    }
                    else
                    {
                        Response.Redirect("DangNhap.aspx");
                    }
                }
                else
                {
                    Response.Redirect("DangNhap.aspx");
                }
            }
            else
            {
                Response.Redirect("DangNhap.aspx");

            }

        }
        private void loadData()
        {
            var data = from cd in db.SANPHAMs
                       select cd;
            if (data != null)
            {
                gridBV.DataSource = data.ToList();
                gridBV.DataBind();
            }
        }
        protected void gridBV_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            gridBV.CurrentPageIndex = e.NewPageIndex;
            loadData();
        }
        protected void gridBV_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (((LinkButton)e.CommandSource).CommandName == "GetIdSanPham")
            {
                long idNewSelect = Convert.ToInt64(gridBV.DataKeys[e.Item.ItemIndex].ToString());
                var datasanpham = from bv in db.SANPHAMs
                                  where bv.IdSanPham == idNewSelect
                                  select bv;
                if (datasanpham != null && datasanpham.Count() > 0)
                {
                    Response.Redirect("CapNhatSanPham.aspx?idSanPham=" + idNewSelect.ToString());
                }
            }
            if (((LinkButton)e.CommandSource).CommandName == "GetIdNewsDelete")
            {
                long idNewSelect = Convert.ToInt64(gridBV.DataKeys[e.Item.ItemIndex].ToString());
                var datasanpham = from bv in db.SANPHAMs
                                  where bv.IdSanPham == idNewSelect
                                  select bv;
                if (datasanpham != null && datasanpham.Count() > 0)
                {
                    SANPHAM infoSanP = datasanpham.First();
                    db.SANPHAMs.DeleteOnSubmit(infoSanP);
                    db.SubmitChanges();
                    loadData();
                }
            }
        }
    }
}