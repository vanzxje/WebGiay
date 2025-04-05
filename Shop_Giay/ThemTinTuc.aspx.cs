using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Giay
{
    public partial class ThemTinTuc : System.Web.UI.Page
    {
        DataClassesDataContext db = new DataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClearForm();
            }
        }
        protected void btnThemmoi_Click(object sender, EventArgs e)
        {
            if (txtTieuDe.Text != "")
            {
                TINTUC infoTT = new TINTUC();
                infoTT.TieuDe = txtTieuDe.Text;
                infoTT.MoTa = txtMoTa.Text;
                if (FileUploadanh.HasFile)
                {
                    infoTT.ImagePath = FileUploadanh.FileName;
                    FileUploadanh.SaveAs(Server.MapPath("images\\post\\") + infoTT.ImagePath);
                }
                infoTT.NoiDung = HttpUtility.HtmlEncode(FCKNoidung.Value);
                db.TINTUCs.InsertOnSubmit(infoTT);
                db.SubmitChanges();
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới thành công!!!')", true);
                ClearForm();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Nhập lại thông tin cho phù hợp!!!')", true);

            }
        }
        private void ClearForm()
        {
            txtTieuDe.Text = "";
            txtMoTa.Text = "";
        }
    }
}