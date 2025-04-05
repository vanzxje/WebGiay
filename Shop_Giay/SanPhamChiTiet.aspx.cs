using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Giay
{
    public partial class SanPhamChiTiet : System.Web.UI.Page
    {
        DataClassesDataContext db = new DataClassesDataContext();
        public static SANPHAM sp = new SANPHAM();
        protected void Page_Load(object sender, EventArgs e)
        {
            int curid = Convert.ToInt32(Request.QueryString["id"]);
            var pro = from q in db.SANPHAMs where q.IdSanPham == curid select q;

            sp = pro.First();
        }
    }
}