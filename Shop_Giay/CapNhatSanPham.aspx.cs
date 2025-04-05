using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Giay
{
    public partial class CapNhatSanPham : System.Web.UI.Page
    {
        DataClassesDataContext db = new DataClassesDataContext();
        public static long idSelect = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadDM();
                loadData();
            }
        }
        private void loadDM()
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
        private void loadData()
        {
            string strId = Request.QueryString["idSanPham"];
            if (strId != "")
            {
                var data = from cd in db.SANPHAMs
                           where cd.IdSanPham == Convert.ToInt64(strId)
                           select cd;
                if (data != null)
                {
                    SANPHAM infoSP = data.First();
                    idSelect = infoSP.IdSanPham;
                    dropDanhMuc.SelectedValue = infoSP.IdDM.ToString();
                    txtTenSP.Text = infoSP.TenSP;
                    imgSP.ImageUrl = "..\\images\\sanpham\\" + infoSP.HinhSP;
                    txtGiaGoc.Text = infoSP.GiaGoc;
                    txtGiaSP.Text = infoSP.GiaSP;
                    txtMoTa.Text = infoSP.MoTa;
                    txtChiTietSP.Text = infoSP.ChiTietSP;
                }
            }
        }
        protected void btnCapnhat_Click(object sender, EventArgs e)
        {
            if (txtTenSP.Text != "")
            {
                var data = from cd in db.SANPHAMs
                           where cd.IdSanPham == idSelect
                           select cd;
                if (data != null)
                {
                    SANPHAM infoSP = data.First();
                    infoSP.TenSP = txtTenSP.Text;
                    if (FileUploadHinhSP.HasFile)
                    {
                        infoSP.HinhSP = FileUploadHinhSP.FileName;
                        FileUploadHinhSP.SaveAs(Server.MapPath("Images\\") + infoSP.HinhSP);
                    }
                    infoSP.GiaGoc = txtGiaGoc.Text;
                    infoSP.GiaSP = txtGiaSP.Text;
                    infoSP.IdDM = Convert.ToInt64(dropDanhMuc.SelectedValue);
                    infoSP.MoTa = txtMoTa.Text;
                    infoSP.ChiTietSP = txtChiTietSP.Text;
                    db.SubmitChanges();
                    ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Cập nhật thành công!!!')", true);
                    Response.Redirect("QuanLySanPham.aspx");
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Vui lòng nhập lại thông tin!!!')", true);

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