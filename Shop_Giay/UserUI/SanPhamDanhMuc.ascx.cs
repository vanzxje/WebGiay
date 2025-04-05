using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Giay.UserUI
{
    public partial class SanPhamDanhMuc : System.Web.UI.UserControl
    {
        DataClassesDataContext db = new DataClassesDataContext();
        public static List<SANPHAM> listSP = new List<SANPHAM>();
        public static string strTenDM = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["IdDanhMuc"] != null && Request.QueryString["IdDanhMuc"].ToString() != "")
            {
                long idDanhMuc = Convert.ToUInt32(Request.QueryString["IdDanhMuc"].ToString());
                loadSanPham(idDanhMuc);
            }
            else
            {
                Response.Redirect("ErrorPage.aspx");
            }
        }
        void loadSanPham(long idDM)
        {
            try
            {
                var data = from q in db.SANPHAMs
                           where q.IdDM == idDM
                           select q;
                if (data != null && data.Count() > 0)
                {
                    listSP = data.ToList();
                }
                var data01 = from q in db.DANHMUCSPs
                             where q.IdDanhMuc == idDM
                             select q;
                if (data01 != null && data01.Count() > 0)
                {
                    strTenDM = data01.First().TenDM;
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("ErrorPage.aspx");
            }
        }
    }
}