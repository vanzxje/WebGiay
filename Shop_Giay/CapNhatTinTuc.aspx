<%@ Page Title="Cập Nhật Tin Tức | Admin" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="CapNhatTinTuc.aspx.cs" Inherits="Shop_Giay.CapNhatTinTuc" %>

<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
        <ul class="nav menu">
            <li><a href="QuanLySanPham.aspx"><svg class="glyph stroked open folder"><use xlink:href="#stroked-open-folder"/></svg>Quản lý sản phẩm</a></li>
            <li class="active"><a href="QuanLyTinTuc.aspx"><svg class="glyph stroked bag"><use xlink:href="#stroked-bag"></use></svg>Quản lý tin tức</a></li>
        </ul>

    </div><!--/.sidebar-->
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
                <li><a href="TrangChu.aspx" title="Trang chủ"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                <li><a href="QuanLyTinTuc.aspx">Quản lý tin tức</a></li>
				<li class="active">Cập nhật tin tức</li>
			</ol>
		</div><!--/.row-->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
					<div class="panel-body">
                        <h3 class="page-header">Cập nhật tin tức</h3>
                        <div> 
                            <div>Tiêu đề:</div> 
                            <asp:TextBox ID="txtTieuDe" runat="server" Height="26px" Width="200px"></asp:TextBox>
                            <br /><br />
                            <div>Mô tả:</div>
                            <asp:TextBox ID="txtMota" runat="server" Height="60px" Width="400px"></asp:TextBox>
                            <br /><br />
                            <div>Hình ảnh:</div>
                            <asp:FileUpload ID="FileUploadanh" runat="server" Height="22px" Width="250px" />
                            <asp:Image ID="imgNews" runat="server" Height="100" Width="100" />
                            <br />
                            <div>Nội dung</div>
                            <FCKeditorV2:FCKeditor ID="FCKNoidung" runat="server" BasePath="~/fckeditor/" 
                                             Height="400px" Width="800px">
                            </FCKeditorV2:FCKeditor>
                            <br />
                            <asp:Button ID="btnCapnhat" runat="server" OnClick="btnCapnhat_Click" Text="Cập nhật" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
