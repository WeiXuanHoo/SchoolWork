<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SchoolInfo.UI.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Index</title>
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
            height: 600px;
            display: block;
            margin: 0px auto;
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
        .content-container
        {
            width: 1200px;
            margin: 0px auto 50px auto;
            padding: 30px 0px 0px 0px;
            font-size: 16px;
            line-height: 30px;
        }
        .content-button
        {
            width: 100%;
            height: 240px;
            line-height: 240px;
            font-size: 60px;
            font-weight: bold;
            text-align: center;
            text-shadow: 0px 0px 10px #000000;
            color: #FFFFFF;
            margin-bottom: 30px;
            cursor: pointer;
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
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
    <script type="text/javascript">
        var bannerIndex = 0;
        var bannerArray = [ 
            "/Assets/img/banner-0.jpg",
            "/Assets/img/banner-1.jpg",
            "/Assets/img/banner-2.jpg",
            "/Assets/img/banner-3.jpg"
        ];

        setInterval(() => {
            bannerIndex = (bannerIndex + 1) % bannerArray.length;
            document.querySelector(".banner-image").src = bannerArray[bannerIndex];
        }, 2000);
    </script>
</head>
<body>
    <!-- Header -->
    <div class="header-container">
        <img class="header-logo" src="/Assets/img/logo.jpg" onclick="location.href='/UI/Index.aspx'" />
        <div class="menu-list">
            <a class="menu-item menu-item-active" href="/UI/Index.aspx">Home</a>
            <a class="menu-item" href="/UI/Club.aspx">Club</a>
            <a class="menu-item" href="/UI/Campus.aspx">Campus</a>
            <a class="menu-item" href="/UI/NeedHelp.aspx">Need Help?</a>
            <a class="menu-item" href="/UI/AboutUs.aspx">About Us</a>
            <a class="menu-item" href="/Admin/AdminLogin.aspx">Admin Login</a>
        </div>
    </div>
    <!-- Banner -->
    <img src="/Assets/img/banner-0.jpg" alt="" class="banner-image" />
    <div class="common-title"></div>
    <div class="content-container">
        <div class="content-button" style="background-color: #2db7f5; background-image: url(/Assets/img/education.jpg);" onclick="location.href='/UI/Eduation.aspx'">Courses</div>
        <div class="content-button" style="background-color: #19be6b; background-image: url(/Assets/img/event.jpg);" onclick="location.href='/UI/Event.aspx'">Coming Event</div>
        <div class="content-button" style="background-color: #ff9900; background-image: url(/Assets/img/notice.png);" onclick="location.href='/UI/Notice.aspx'">Notice Board</div>
    </div>
    <!-- Footer -->
    <div class="footer">
        Copyright © 2022 by G3
    </div>
</body>
</html>
