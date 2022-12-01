<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="SchoolInfo.UI.AboutUs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AboutUs</title>
    <style type="text/css">
        body
        {
            background-color: #E7DBD6;
            margin: 0px;
            padding: 0px;
        }
        *
        {
            box-sizing: border-box;
        }
        .header-container
        {
            width: 100%;
            background-color: #A39E92;
            padding: 20px calc(50% - 600px);
            font-weight: bold;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .header-logo
        {
            height: 80px;
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
        .notice-container
        {
            width: 1200px;
            margin: 0px auto 20px auto;
            padding: 20px 30px;
            font-size: 16px;
            line-height: 30px;
            background-color: #FFFFFF;
        }
        .notice-line
        {
            width: 1200px;
            margin: 0px auto;
            padding: 25px 0px;
            border-bottom: 1px dashed #dcdee2;
            display: flex;
            align-items: center;
        }
        .notice-image
        {
            width: 500px;
            height: 360px;
            margin-right: 50px;
        }
        .notice-content
        {
            flex-grow: 1;
            font-size: 18px;
            line-height: 40px;   
            white-space: pre-line;
        }
        .common-image
        {
            width: 1200px;
            display: block;
            margin: 0px auto;
        }
        .common-title
        {
            line-height: 100px;
            font-size: 24px;
            font-weight: bold;
            text-align: center;
        }
        .form-container
        {
            width: 800px;
            margin: 0px auto 50px auto;
            font-size: 16px;
            line-height: 30px;
            border: 0px solid #808695;
            border-radius: 10px;
            padding: 10px 40px 20px 40px;
            background: #FFFFFF;
            box-shadow: 5px 5px 5px #CCCCCC;
        }
        .form-title {
            font-size: 24px;
            font-weight: bold;
            line-height: 60px;
            text-align: center;
        }
        .form-line
        {
            padding: 3px 0px;
        }
        .form-name
        {
            line-height: 50px;
            font-size: 16px;
        }
        .form-input
        {
            width: 100%;
            height: 36px;
            line-height: 36px;
            border: 1px solid #dcdee2;
            outline: none;
            padding-left: 12px;
            font-size: 16px;
        }
        .form-textarea
        {
            width: 100%;
            border: 1px solid #dcdee2;
            outline: none;
            padding: 5px 12px;
            font-size: 16px;
            line-height: 26px;
        }
        .button-submit
        {
            width: 110px;
            height: 36px;
            background-color: #19be6b;
            color: #FFFFFF;
            margin-left: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .footer
        {
            width: 100%;
            height: 100px;
            line-height: 100px;
            text-align: center;
            background-color: #000000;
            text-align: center;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <div class="header-container">
        <img class="header-logo" src="/Assets/img/logo.jpg" onclick="location.href='/UI/Index.aspx'" />
        <div class="menu-list">
            <a class="menu-item" href="/UI/Index.aspx">Home</a>
            <a class="menu-item" href="/UI/Club.aspx">Club</a>
            <a class="menu-item" href="/UI/Campus.aspx">Campus</a>
            <a class="menu-item" href="/UI/NeedHelp.aspx">Need Help?</a>
            <a class="menu-item menu-item-active" href="/UI/AboutUs.aspx">About Us</a>
            <a class="menu-item" href="/Admin/AdminLogin.aspx">Admin Login</a>
        </div>
    </div>
    <div class="common-title">About Us</div>
    <div class="notice-container">
        <%
            for (int i = 0; i < dtContactList.Rows.Count; i++)
            {
                %>
                <div class="notice-line">
                    <img src="/Uploads/<%= dtContactList.Rows[i]["contact_image"]%>" alt="" class="notice-image" />
                    <div class="notice-content"><%= dtContactList.Rows[i]["contact_text"]%></div>
                </div>
                <%
            }
        %>
    </div>
    <form id="form" runat="server">
        <div class="form-container">
            <div class="form-title">Call Back Service</div>
            <div class="form-line">
                <div class="form-name">Name:</div>
                <asp:TextBox ID="txtName" class="form-input" runat="server"></asp:TextBox>
            </div>
            <div class="form-line">
                <div class="form-name">Phone Number:</div>
                <asp:TextBox ID="txtPhone" class="form-input" runat="server"></asp:TextBox>
            </div>
            <div class="form-line">
                <div class="form-name">Email:</div>
                <asp:TextBox ID="txtEMail" class="form-input" runat="server"></asp:TextBox>
            </div>
            <div class="form-line">
                <div class="form-name">Content:</div>
                <asp:TextBox ID="txtContent" class="form-textarea" runat="server" TextMode="MultiLine" Height="300"></asp:TextBox>
            </div>
            <div class="form-line" style="text-align: right; padding: 20px 0px 10px 0px;">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="button-submit" onclick="btnSubmit_Click" />
            </div>
        </div>
    </form>
    <!-- Footer -->
    <div class="footer">
        Copyright © 2022 by G3
    </div>
</body>
</html>