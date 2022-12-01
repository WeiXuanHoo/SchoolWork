<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminIndex.aspx.cs" Inherits="SchoolInfo.Admin.AdminIndex" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Index</title>
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
            display: flex;
        }
        .page-left
        {
            width: 250px;
            height: 100vh;
            background-color: #17233d;
        }
        .page-name
        {
            height: 60px;
            line-height: 60px;
            padding-left: 20px;
            color: #FFFFFF;
            font-size: 24px;
            font-weight: bold;
            background-color: rgba(0,0,0,0.4);
        }
        .pae-menu
        {
            height: calc(100vh - 60px);
            overflow-y: auto;
        }
        .page-menu-title
        {
            height: 50px;
            line-height: 50px;
            padding-left: 20px;
            color: #FFFFFF;
            font-size: 14px;
            background-color: rgba(255,255,255,0.1); 
        }
        .page-menu-item
        {
            height: 50px;
            line-height: 50px;
            padding-left: 30px;
            color: #FFFFFF;
            font-size: 14px;
            border-bottom: 1px dashed rgba(255,255,255,0.1); 
            cursor: pointer;
        }
        .page-menu-item-active
        {
            height: 50px;
            line-height: 50px;
            padding-left: 30px;
            color: Yellow;
            font-size: 14px;
            border-bottom: 1px dashed rgba(255,255,255,0.1); 
            background-color: rgba(0,0,0,0.3);
            cursor: pointer;
        }
        .page-menu-item:hover
        {
            background-color: rgba(0,0,0,0.3);
            color: Yellow;
        }
        .page-right
        {
            flex-grow: 1;
            height: 100vh;
        }
        .page-top
        {
            width: 100%;
            height: 60px;
            line-height: 60px;
            background-color: #2db7f5;
            padding: 0px 30px;
            text-align: right;
        }
        .page-top a
        {
            color: #FFFFFF;
            text-decoration: none;
        }
        .page-main
        {
            width: 100%;
            height: calc(100vh - 60px);
            border: none;
        }
    </style>
    <script type="text/javascript">
        function menuClick(url, e) {
            document.getElementById("frame-main").src = url;
            if (document.querySelector(".page-menu-item-active")) {
                document.querySelector(".page-menu-item-active").classList.remove("page-menu-item-active");
            }
            e.currentTarget.classList.add("page-menu-item-active");
        }
    </script>
</head>
<body>
    <div class="page-container">
        <div class="page-left">
            <div class="page-name">School Info</div>
            <div class="pae-menu">
                <div class="page-menu-title">Menu Summary</div>
                <div class="page-menu-item" onclick="menuClick('/Admin/CampusList.aspx', event)">- Campus Manage</div>
                <div class="page-menu-item" onclick="menuClick('/Admin/ClubList.aspx', event)">- Club Manage</div>
                <div class="page-menu-item" onclick="menuClick('/Admin/ClubEventList.aspx', event)">- Club Event Manage</div>
                <div class="page-menu-item" onclick="menuClick('/Admin/MCList.aspx', event)">- MC Manage</div>
                <div class="page-menu-item" onclick="menuClick('/Admin/MedicalList.aspx', event)">- Medical Manage</div>
                <div class="page-menu-item" onclick="menuClick('/Admin/BenefitsList.aspx', event)">- Benefits Manage</div>
                <div class="page-menu-item" onclick="menuClick('/Admin/EventList.aspx', event)">- Event Manage</div>
                <div class="page-menu-item" onclick="menuClick('/Admin/NoticeList.aspx', event)">- Notice Manage</div>
                <div class="page-menu-item" onclick="menuClick('/Admin/EduationList.aspx', event)">- Eduation Manage</div>
                <div class="page-menu-item" onclick="menuClick('/Admin/Passport.aspx', event)">- Passport Manage</div>
                <div class="page-menu-item" onclick="menuClick('/Admin/InternetList.aspx', event)">- Internet Manage</div>
                <div class="page-menu-item" onclick="menuClick('/Admin/TimetableList.aspx', event)">- Timeable Manage</div>
                <div class="page-menu-item" onclick="menuClick('/Admin/Facibility.aspx', event)">- Facibility Manage</div>
                <div class="page-menu-item" onclick="menuClick('/Admin/PaymentList.aspx', event)">- Payment Manage</div>
                <div class="page-menu-item" onclick="menuClick('/Admin/AboutUs.aspx', event)">- AboutUs Manage</div>
                <div class="page-menu-item" onclick="menuClick('/Admin/ContactList.aspx', event)">- Contact Manage</div>
            </div>
        </div>
        <div class="page-right">
            <div class="page-top">
                <a href="/Admin/AdminLogin.aspx">Login Out</a>
            </div>
            <iframe id="frame-main" class="page-main" src="/Admin/Main.aspx"></iframe>
        </div>
    </div>
</body>
</html>
