using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Giay
{
    public partial class QuanLyTinTuc : System.Web.UI.Page
    {
        DataClassesDataContext db = new DataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadData();
            }
        }
        private void loadData()
        {
            var data = from cd in db.TINTUCs
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
            if (((LinkButton)e.CommandSource).CommandName == "GetIdNews")
            {
                long idNewSelect = Convert.ToInt64(gridBV.DataKeys[e.Item.ItemIndex].ToString());
                var databaiviet = from bv in db.TINTUCs
                                  where bv.IdNews == idNewSelect
                                  select bv;
                if (databaiviet != null && databaiviet.Count() > 0)
                {
                    Response.Redirect("CapNhatTinTuc.aspx?idNews=" + idNewSelect.ToString());
                }
            }
            if (((LinkButton)e.CommandSource).CommandName == "GetIdNewsDelete")
            {
                long idNewSelect = Convert.ToInt64(gridBV.DataKeys[e.Item.ItemIndex].ToString());
                var databaiviet = from bv in db.TINTUCs
                                  where bv.IdNews == idNewSelect
                                  select bv;
                if (databaiviet != null && databaiviet.Count() > 0)
                {
                    TINTUC infoTin = databaiviet.First();
                    db.TINTUCs.DeleteOnSubmit(infoTin);
                    db.SubmitChanges();
                    loadData();
                }
            }
        }
    }
}