<%@ Page Title="Sản phẩm danh mục | Shop Giày" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SanPhamDanhMuc.aspx.cs" Inherits="Shop_Giay.SanPhamDanhMuc" %>
<%@ Register src="UserUI/SanPhamDanhMuc.ascx" tagname="SanPhamDanhMuc" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:SanPhamDanhMuc ID="SanPhamDanhMuc1" runat="server" />
</asp:Content>
