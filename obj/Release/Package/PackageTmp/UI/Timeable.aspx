<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Timeable.aspx.cs" Inherits="SchoolInfo.UI.Timeable" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Timeable</title>
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
        .table-list
        {
            width: 1200px;
            margin: 0px auto 50px auto;
            border-collapse: collapse;
        }
        .table-list thead
        {
            background-color: #515a6e;
            color: #FFFFFF;
        }
        .table-list td
        {
            border: 1px solid #dcdee2;
            font-size: 14px;
            line-height: 20px;
            padding: 10px 15px;
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
    <div class="common-title">Timeable List</div>
    <table class="table-list">
        <thead>
            <tr>
                <td style="width: 100px;">ID</td>
                <td>Timeable Name</td>
                <td>Timeable File</td>
            </tr>
        </thead>
        <tbody>
            <%
                if (dtDataList != null)
                {
                    for (int i = 0; i < dtDataList.Rows.Count; i++)
                    {
                        %>
                        <tr>
                            <td><%= i + 1%></td>
                            <td><%= dtDataList.Rows[i]["timetable_name"]%></td>
                            <td><a href="/Uploads/<%= dtDataList.Rows[i]["timetable_file"]%>">[Download]</a></td>
                        </tr>
                        <%
                    }
                }
            %>
        </tbody>
    </table>
    <!-- Footer -->
    <div class="footer">
        Copyright © 2022 by G3
    </div>
</body>
</html>