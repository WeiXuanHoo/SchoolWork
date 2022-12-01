<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NeedHelp.aspx.cs" Inherits="SchoolInfo.UI.NeedHelp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Need Help</title>
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
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .content-link
        {
            color: #000000;
            text-decoration: none;
        }
        .content-item
        {
            background-color: #FFFFFF;
            box-shadow: 3px 3px 3px #CCCCCC;
            margin-bottom: 20px;
        }
        .content-image
        {
            width: 260px;
            height: 220px;
        }
        .content-name
        {
            line-height: 20px;
            padding: 10px;
            text-align: center;
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
    <div class="common-title">Need Help</div>
    <div class="content-container">
        <a href="/UI/MC.aspx" class="content-link" target="_blank">
            <div class="content-item">
                <img class="content-image" src="/Assets/img/absent.png" alt="" />
                <div class="content-name">Submit Absent Letter</div>
            </div>
        </a>
        <a href="/UI/Medical.aspx" class="content-link" target="_blank">
            <div class="content-item">
                <img class="content-image" src="/Assets/img/medical.png" alt="" />
                <div class="content-name">Medical Helps</div>
            </div>
        </a>
        <a href="/UI/Passport.aspx" class="content-link" target="_blank">
            <div class="content-item">
                <img class="content-image" src="/Assets/img/pass.png" alt="" />
                <div class="content-name">Passport / Student Pass</div>
            </div>
        </a>
        <a href="/UI/Internet.aspx" class="content-link" target="_blank">
            <div class="content-item">
                <img class="content-image" src="/Assets/img/internet.png" alt="" />
                <div class="content-name">Internet</div>
            </div>
        </a>
        <a href="/UI/Benefits.aspx" class="content-link" target="_blank">
            <div class="content-item">
                <img class="content-image" src="/Assets/img/studentbenefits.png" alt="" />
                <div class="content-name">Student Benefits</div>
            </div>
        </a>
        <a href="/UI/Timeable.aspx" class="content-link" target="_blank">
            <div class="content-item">
                <img class="content-image" src="/Assets/img/timetable.png" alt="" />
                <div class="content-name">TimeTable</div>
            </div>
        </a>
        <a href="/UI/Facibility.aspx" class="content-link" target="_blank">
            <div class="content-item">
                <img class="content-image" src="/Assets/img/facifility.png" alt="" />
                <div class="content-name">Facibility</div>
            </div>
        </a>
        <a href="/UI/Payment.aspx" class="content-link" target="_blank">
            <div class="content-item">
                <img class="content-image" src="/Assets/img/payment.png" alt="" />
                <div class="content-name">Payment</div>
            </div>
        </a>
    </div>
    <!-- Footer -->
    <div class="footer">
        Copyright © 2022 by G3
    </div>
</body>
</html>
