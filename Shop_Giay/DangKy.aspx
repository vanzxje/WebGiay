<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="Shop_Giay.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Ký | FoodBoy</title>
    <link href="css/login-out.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="login">
        <h2 class="active"> ĐĂNG KÝ </h2>

        <h2><a href="DangNhap.aspx" class="nonactive"> ĐĂNG NHẬP </a></h2>

        <div class="form">
            <asp:TextBox ID="txtUsername" runat="server" type="text" class="text" Placeholder="New Username"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtPass" runat="server" type="password" class="text" Placeholder="New Password"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtReenterPass" runat="server" type="password" class="text" Placeholder="Reenter Password"></asp:TextBox>
            <br /><br />
            <input type="checkbox" id="checkbox-1-1" class="custom-checkbox" />
            <label for="checkbox-1-1">Giữ đăng nhập</label>
            <br /><br />
           <asp:Button ID="btnDangKy" runat="server" class="btnsign" Text="Đăng ký" OnClick="btnDangKy_Click"/>
            <a class="forgotpassword" href="#">Quên mật khẩu</a>
        </div> 
        </div>
    </div>
    </form>
</body>
</html>
