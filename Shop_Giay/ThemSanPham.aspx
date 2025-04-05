<%@ Page Title="Thêm Sản Phẩm | Admin" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="ThemSanPham.aspx.cs" Inherits="Shop_Giay.ThemSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
        <ul class="nav menu">
            <li class="active"><a href="QuanLySanPham.aspx"><svg class="glyph stroked open folder"><use xlink:href="#stroked-open-folder"/></svg>Quản lý sản phẩm</a></li>
            <li><a href="QuanLyTinTuc.aspx"><svg class="glyph stroked bag"><use xlink:href="#stroked-bag"></use></svg>Quản lý tin tức</a></li>
        </ul>

    </div><!--/.sidebar-->
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
                <li><a href="TrangChu.aspx" title="Trang chủ"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                <li><a href="QuanLySanPham.aspx">Quản lý sản phẩm</a></li>
				<li class="active">Thêm sản phẩm</li>
			</ol>
		</div><!--/.row-->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
					<div class="panel-body">
                        <h3 class="page-header">Thêm sản phẩm</h3>
                        <div>
                            <div>Danh mục:</div>
                            <asp:DropDownList ID="dropDanhMuc" runat="server" AutoPostBack="true" Height="26px" Width="159px"></asp:DropDownList>
                            <br /><br /> 
                            <div>Tên sản phẩm:</div> 
                            <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox>
                            <br /><br />
                            <div>Hình ảnh:</div>
                            <asp:FileUpload ID="FileUploadHinhSP" runat="server" Height="22px" Width="250px"></asp:FileUpload>
                            <br />
                            <div>Giá gốc:</div>
                            <asp:TextBox ID="txtGiaGoc" runat="server"></asp:TextBox>
                            <br /><br />
                            <div>Giá:</div>
                            <asp:TextBox ID="txtGiaSP" runat="server"></asp:TextBox>
                            <br /><br />
                            <div>Mô tả:</div> 
                            <asp:TextBox ID="txtMoTa" runat="server"></asp:TextBox>
                            <br /><br />
                            <div>Chi tiết:</div> 
                            <asp:TextBox ID="txtChiTietSP" runat="server"></asp:TextBox>
                            <br /><br />
                            <asp:Button ID="btnThemmoi" runat="server" OnClick="btnThemmoi_Click" Text="Thêm mới" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
