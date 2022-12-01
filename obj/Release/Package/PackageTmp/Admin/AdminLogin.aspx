<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="SchoolInfo.Admin.AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <style type="text/css">
        *
        {
            box-sizing: border-box;
        }
        body
        {
            margin: 0px;
            padding: 0px;
        }
        .page-container
        {
            width: 100vw;
            height: 100vh;
            overflow: hidden;
            background-image: url(/Assets/img/login-bg.png);
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .menu-list
        {
            background-color: #2d8cf0;
            color: #FFFFFF;
            height: 50px;
            line-height: 50px;
            display: flex;
            border-left: 1px solid rgba(255, 255, 255, 0.3);
        }
        .menu-item
        {
            height: 50px;
            line-height: 50px;
            text-align: center;
            border-right: 1px solid rgba(255, 255, 255, 0.3);
            font-size: 14px;
            cursor: pointer;
            padding: 0px 40px;
            text-decoration: none;
            color: #FFFFFF;
        }
        .menu-item:hover
        {
            background-color: rgba(0,0,0,0.2);
            color: yellow;
        }
        .menu-item-active
        {
            background-color: rgba(0,0,0,0.2);
            color: yellow;
        }
        .form-container
        {
            width: 500px;
            height: 500px;
            background-color: #FFFFFF;
            border-radius: 20px;
        }
        .form-title
        {
            height: 70px;
            line-height: 70px;
            background-color: #e8eaec;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
            text-align: center;
            border-radius: 20px 20px 0px 0px;
        }
        .form-content
        {
            padding: 30px 50px 10px 50px;
        }
        .form-line
        {
            padding: 10px 0px;
        }
        .form-name
        {
            line-height: 60px;
        }
        .form-input
        {
            border: 1px solid #dcdee2;
            width: 100%;
            height: 40px; 
            padding-left: 10px;
            outline: none;
            font-size: 16px;
        }
        .login-submit
        {
            width: 100%;
            height: 46px;
            line-height: 46px;
            background-color: #2d8cf0;
            color: #FFFFFF;
            border: none;
            font-size: 16px;
            border-radius: 8px;
        }
    </style>
</head>
<body>
    <div class="menu-list">
            <a class="menu-item menu-item-active" href="/UI/Index.aspx">Home</a>
        </div>
    <div class="page-container">
        <div class="form-container">
            <form id="loginForm" runat="server">
                <div class="form-title">Admin Login</div>
                <div class="form-content">
                    <div class="form-line">
                        <div class="form-name">Admin Name：</div>
                        <asp:TextBox ID="txtName" runat="server" class="form-input"></asp:TextBox>
                    </div>
                    <div class="form-line">
                        <div class="form-name">Admin Password：</div>
                        <asp:TextBox ID="txtPassword" runat="server" class="form-input" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-line" style="padding-top: 30px;">
                        <asp:Button ID="loginSubmit" runat="server" Text="Submit" class="login-submit" 
                            onclick="loginSubmit_Click" />
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
