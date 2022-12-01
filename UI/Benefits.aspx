<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Benefits.aspx.cs" Inherits="SchoolInfo.UI.Benefits" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Benefits</title>
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
        .content-container
        {
            width: 1200px;
            margin: 0px auto 50px auto;
            font-size: 18px;
            line-height: 34px;
            white-space: pre-line;
        }
        .content-item
        {
            width: 100%;
            display: flex;
            justify-content: space-between;
            padding: 10px;
            background-color: #FFFFFF;
            box-shadow: 3px 3px 3px #CCCCCC;
            margin-bottom: 20px;
        }
        .content-image
        {
            width: 400px;
            height: 300px;
            margin-right: 20px;
        }
        .content-detail
        {
            flex-grow: 1;
        }
        .content-name
        {
            line-height: 50px;
            font-size: 20px;
            font-weight: bold;
        }
        .content-date
        {
            font-size: 16px;
            line-height: 30px;
            padding: 5px 0px;
        }
        .content-address
        {
            font-size: 16px;
            line-height: 30px;
            padding: 5px 0px;
        }
        .content-desc
        {
            line-height: 30px;
            padding: 5px 0px;
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
            <a class="menu-item menu-item-active" href="/UI/NeedHelp.aspx">Need Help?</a>
            <a class="menu-item" href="/UI/AboutUs.aspx">About Us</a>
            <a class="menu-item" href="/Admin/AdminLogin.aspx">Admin Login</a>
        </div>
    </div>
    <!-- Banner -->
    <img src="/Assets/img/banner-caompus.jpg" alt="" class="banner-image" />
    <!-- Common Title -->
    <div class="common-title">Benefits List</div>
    <div class="content-container">
        <%
            if (dtDataList != null)
            {
                for (int i = 0; i < dtDataList.Rows.Count; i++)
                {
                    %>
                    <div class="content-item">
                        <img src="/Uploads/<%= dtDataList.Rows[i]["benefits_image"] %>" alt="" class="content-image" />
                        <div class="content-detail">
                            <div class="content-name">Name: <%= dtDataList.Rows[i]["benefits_name"]%></div>
                            <div class="content-desc">Description: <%= dtDataList.Rows[i]["benefits_content"]%></div>
                        </div>
                    </div>
                    <%
                }
            }
        %>
    </div>
    <!-- Footer -->
    <div class="footer">
        Copyright © 2022 by G3
    </div>
</body>
</html>