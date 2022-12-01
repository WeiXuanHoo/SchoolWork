<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Club.aspx.cs" Inherits="SchoolInfo.UI.Club" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Club</title>
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
        .banner-image
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
        .common-image
        {
            width: 400px;
            display: block;
            margin: 0px auto 20px auto;
        }
        .content-container
        {
            width: 1200px;
            margin: 0px auto 50px auto;
            padding: 30px 20px 0px 20px;
            font-size: 16px;
            line-height: 30px;
        }
        .content-text
        {
            padding: 10px 20px 10px 20px;
            font-size: 18px;
            line-height: 34px;
            white-space: pre-line;
            background-color: #A39E92;
        }
        .event-item
        {
            padding: 10px 0px;
            font-size: 20px;
            line-height: 30px;
            border-bottom: 1px dashed #dcdee2;
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
            <a class="menu-item menu-item-active" href="/UI/Club.aspx">Club</a>
            <a class="menu-item" href="/UI/Campus.aspx">Campus</a>
            <a class="menu-item" href="/UI/NeedHelp.aspx">Need Help?</a>
            <a class="menu-item" href="/UI/AboutUs.aspx">About Us</a>
            <a class="menu-item" href="/Admin/AdminLogin.aspx">Admin Login</a>
        </div>
    </div>
    <!-- Banner -->
    <img src="/Assets/img/banner-caompus.jpg" alt="" class="banner-image" />
    <div class="common-title">Club Event</div>
    <div class="content-container" style="margin-bottom: 20px;">
        <%
            if (dtEventList != null)
            {
                for (int i = 0; i < dtEventList.Rows.Count; i++)
                {
                    %>
                    <div class="event-item"><%= dtEventList.Rows[i]["clubevent_content"]%></div>
                    <%
                }
            }
        %>
    </div>
    <div class="common-title">Club Select</div>
    <div class="content-container">
        <form id="form" runat="server">
            <asp:DropDownList ID="txtSelect" class="form-input" runat="server" 
                onselectedindexchanged="txtSelect_SelectedIndexChanged" 
                AutoPostBack="True"></asp:DropDownList>
        </form>
        <div class="common-title"><%= dtClubList.Rows[ClubIndex]["club_name"]%></div>
        <img src="/Uploads/<%= dtClubList.Rows[ClubIndex]["club_image"]%>" alt="" class="common-image" />
        <div class="content-text"><%= dtClubList.Rows[ClubIndex]["club_content"]%></div>
    </div>
    <!-- Footer -->
    <div class="footer">
        Copyright © 2022 by G3
    </div>
</body>
</html>
