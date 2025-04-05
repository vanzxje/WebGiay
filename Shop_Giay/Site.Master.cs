using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Giay
{
    public partial class Site : System.Web.UI.MasterPage
    {
        DataClassesDataContext db = new DataClassesDataContext();
        public static List<DANHMUCSP> listDM = new List<DANHMUCSP>();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadDM();
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
    }
}