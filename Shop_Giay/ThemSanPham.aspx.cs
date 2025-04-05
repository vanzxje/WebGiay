using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Giay
{
    public partial class ThemSanPham : System.Web.UI.Page
    {
        DataClassesDataContext db = new DataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDM();
                ClearForm();
            }
        }
        private void LoadDM()
        {
            var data = from cd in db.DANHMUCSPs
                       select cd;
            if (data != null)
            {
                List<DANHMUCSP> listDM = data.ToList();
                dropDanhMuc.DataSource = listDM;
                dropDanhMuc.DataTextField = "TenDM";
                dropDanhMuc.DataValueField = "IdDanhMuc";
                dropDanhMuc.DataBind();
            }
        }
        protected void btnThemmoi_Click(object sender, EventArgs e)
        {
            if (txtTenSP.Text != "")
            {
                SANPHAM infoSP = new SANPHAM();
                infoSP.TenSP = txtTenSP.Text;
                if (FileUploadHinhSP.HasFile)
                {
                    infoSP.HinhSP = FileUploadHinhSP.FileName;
                    FileUploadHinhSP.SaveAs(Server.MapPath("images\\sanpham\\") + infoSP.HinhSP);
                }
                infoSP.GiaGoc = txtGiaGoc.Text;
                infoSP.GiaSP = txtGiaSP.Text;
                infoSP.IdDM = Convert.ToInt64(dropDanhMuc.SelectedValue);
                infoSP.MoTa = txtMoTa.Text;
                infoSP.ChiTietSP = txtChiTietSP.Text;
                db.SANPHAMs.InsertOnSubmit(infoSP);
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
            txtTenSP.Text = "";
            txtGiaGoc.Text = "";
            txtGiaSP.Text = "";
            txtMoTa.Text = "";
            txtChiTietSP.Text = "";
        }
    }
}