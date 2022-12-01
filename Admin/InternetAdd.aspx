<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InternetAdd.aspx.cs" Inherits="SchoolInfo.Admin.InternetAdd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            margin: 0px;
            padding: 0px;
            padding-top: 30px;
        }
        *
        {
            box-sizing: border-box;
        }
        #form
        {
            width: 60%;
            margin: 0px auto;
            border-top: 2px solid #000000;
            border-bottom: 2px solid #000000;
            padding: 10px 0px;
        }
        .form-title
        {
            line-height: 40px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
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
        .form-upload
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
        .button-back
        {
            width: 110px;
            height: 36px;
            background-color: #5cadff;
            color: #FFFFFF;
            margin-left: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form" runat="server">
        <div class="form-title">Internet Add</div>
        <div class="form-line">
            <div class="form-name">Internet Name:</div>
            <asp:TextBox ID="txtName" class="form-input" runat="server"></asp:TextBox>
        </div>
        <div class="form-line">
            <div class="form-name">Internet Image:</div>
            <asp:FileUpload ID="txtUpload" class="form-upload" runat="server" />
        </div>
        <div class="form-line">
            <div class="form-name">Internet Address:</div>
            <asp:TextBox ID="txtAddress" class="form-textarea" runat="server"></asp:TextBox>
        </div>
        <div class="form-line">
            <div class="form-name">Internet Content:</div>
            <asp:TextBox ID="txtContent" class="form-textarea" runat="server" TextMode="MultiLine" Height="400"></asp:TextBox>
        </div>
        <div class="form-line" style="text-align: right; padding: 20px 0px 10px 0px;">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="button-submit" 
                onclick="btnSubmit_Click" />
            <asp:Button ID="btnBack" runat="server" Text="Back" class="button-back" 
                onclick="btnBack_Click" />
        </div>
    </form>
</body>
</html>
