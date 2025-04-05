<%@ Page Title="Trang Chủ | Shop Giày" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="Shop_Giay.TrangChu" %>
<%@ Register src="UserUI/TrangChu.ascx" tagname="TrangChu" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:TrangChu ID="TrangChu1" runat="server" />
</asp:Content>
