<%@ Page Title="Quản Lý Tin Tức | Admin" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="QuanLyTinTuc.aspx.cs" Inherits="Shop_Giay.QuanLyTinTuc" %>
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
				<li class="active">Danh sách tin tức</li>
			</ol>
		</div><!--/.row-->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
					<div class="panel-body">
                        <h3 class="page-header">Danh sách tin tức</h3>
                        <div>
                            <asp:DataGrid ID="gridBV" runat="server" AllowPaging="true" PageSize="6" PagerStyle-Mode="NumericPages"
                                AutoGenerateColumns="false" DataKeyField="IdNews" OnItemCommand="gridBV_ItemCommand" OnPageIndexChanged="gridBV_PageIndexChanged" Style="text-align:center" Width="800px">
                                <Columns>
                                    <asp:TemplateColumn HeaderText="Hình Ảnh" HeaderStyle-Font-Bold="true" ItemStyle-Width="80px">
                                        <ItemTemplate>
                                            <img src='<%# "images/post/"+Eval("ImagePath").ToString() %>' alt='<%# Eval("TieuDe").ToString() %>' style="margin: 10px 0" width="50" height="50"/>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                                <Columns>
                                    <asp:TemplateColumn HeaderText="Tiêu Đề" HeaderStyle-Font-Bold="true" ItemStyle-Width="400px">
                                        <ItemTemplate>
                                            <asp:LinkButton Font-Underline="false" ID="lnkTitle" runat="server" CommandName="GetIdNews" Text='<%# Eval("TieuDe").ToString() %>'></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                                <Columns>
                                    <asp:TemplateColumn HeaderText="Xóa" HeaderStyle-Font-Bold="true" ItemStyle-Width="50px">
                                        <ItemTemplate>
                                            <asp:LinkButton Font-Underline="false" ID="lnkXoa" runat="server" OnClientClick="return confirm('Bạn có muốn xóa tin tức này?');"  CommandName="GetIdNewsDelete" Text="Xóa"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                            </asp:DataGrid>
                        </div>
                        <br />
                        <div id="toolbar" class="btn-group">
                            <a href="ThemTinTuc.aspx" class="btn btn-success">
                                <i class="glyphicon glyphicon-plus"></i> Thêm tin tức
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
