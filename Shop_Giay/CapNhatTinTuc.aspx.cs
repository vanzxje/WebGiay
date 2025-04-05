using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Giay
{
    public partial class CapNhatTinTuc : System.Web.UI.Page
    {
        DataClassesDataContext db = new DataClassesDataContext();
        public static long idSelect = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }
        private void LoadData()
        {
            string strId = Request.QueryString["idNews"];
            if (strId != "")
            {
                var data = from cd in db.TINTUCs
                           where cd.IdNews == Convert.ToInt64(strId)
                           select cd;
                if (data != null)
                {
                    TINTUC infoTT = data.First();
                    idSelect = infoTT.IdNews;
                    txtTieuDe.Text = infoTT.TieuDe;
                    txtMota.Text = infoTT.MoTa;
                    FCKNoidung.Value = HttpUtility.HtmlDecode(infoTT.NoiDung);
                    imgNews.ImageUrl = "..\\images\\post\\" + infoTT.ImagePath;
                }

            }
        }
        protected void btnCapnhat_Click(object sender, EventArgs e)
        {
            if (txtTieuDe.Text != "")
            {
                var data = from cd in db.TINTUCs
                           where cd.IdNews == idSelect
                           select cd;
                if (data != null)
                {
                    TINTUC infoTT = data.First();
                    infoTT.TieuDe = txtTieuDe.Text;
                    infoTT.MoTa = txtMota.Text;
                    if (FileUploadanh.HasFile)
                    {
                        infoTT.ImagePath = FileUploadanh.FileName;
                        FileUploadanh.SaveAs(Server.MapPath("Images\\") + infoTT.ImagePath);
                    }
                    infoTT.NoiDung = HttpUtility.HtmlEncode(FCKNoidung.Value);
                    db.SubmitChanges();
                    ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Cập nhật thành công!!!')", true);
                    Response.Redirect("QuanLyTinTuc.aspx");
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Vui lòng nhập lại thông tin!!!')", true);

            }
        }

        private void ClearForm()
        {
            txtTieuDe.Text = "";
            txtMota.Text = "";

        }
    }
}