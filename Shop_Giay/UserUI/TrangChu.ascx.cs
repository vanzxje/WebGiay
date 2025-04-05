using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Giay.UserUI
{
    public partial class TrangChu : System.Web.UI.UserControl
    {
        DataClassesDataContext db = new DataClassesDataContext();
        public static List<DANHMUCSP> listDM = new List<DANHMUCSP>();
        public static List<SANPHAM> listSP = new List<SANPHAM>();
        public static List<TINTUC> listTT = new List<TINTUC>();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadSP();
            loadDM();
            loadTT();
        }
        void loadSP()
        {
            var data = (from q in db.SANPHAMs
                        select q);
            if (data != null && data.Count() > 0)
            {
                listSP = data.ToList();
            }
        }
        void loadDM()
        {
            var dataDM = from h in db.DANHMUCSPs
                         select h;
            if (dataDM != null && dataDM.Count() > 0)
            {
                listDM = dataDM.ToList();
            }
        }
        void loadTT()
        {
            var dataTT = from p in db.TINTUCs
                         select p;
            if (dataTT != null && dataTT.Count() > 0)
            {
                listTT = dataTT.ToList();
            }
        }
    }
}