<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MCList.aspx.cs" Inherits="SchoolInfo.Admin.MCList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            margin: 0px;
            padding: 0px;
            padding-bottom: 12px;
            color: #17233d;
        }
        *
        {
            box-sizing: border-box;
        }
        .button-container
        {
            width: calc(100% - 24px);
            margin: 0px auto;
            padding: 12px 0px;
        }
        .button-add
        {
            width: 110px;
            height: 36px;
            background-color: #19be6b;
            color: #FFFFFF;
            margin-right: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .button-reload
        {
            width: 110px;
            height: 36px;
            background-color: #ff9900;
            color: #FFFFFF;
            margin-right: 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .table-list
        {
            width: calc(100% - 24px);
            margin: 0px auto;
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
        .button-edit
        {
            width: 70px;
            height: 30px;
            background-color: #19be6b;
            color: #FFFFFF;
            margin-right: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .button-delete
        {
            width: 70px;
            height: 30px;
            background-color: #ff9900;
            color: #FFFFFF;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        
        #preview-layer
        {
            display: none;
            width: 100vw; 
            height: 100vh; 
            position: fixed; 
            top: 0px; 
            left: 0px; 
            z-index: 99; 
            background-color: rgba(0,0,0,0.5);
            justify-content: center; 
            align-items: center;
            cursor: pointer;
        }
        #preview-image
        {
            max-width: 90vw; max-height: 90vh;
        }
    </style>
    <script type="text/javascript">
        function reloadFunc() {
            location.reload();
        }

        function previewOpen(imgSrc) {
            document.getElementById("preview-layer").style.display = "flex";
            document.getElementById("preview-image").src = "/Uploads/" + imgSrc;
        }

        function previewClose(imgSrc) {
            document.getElementById("preview-layer").style.display = "none";
            document.getElementById("preview-image").src = "";
        }
    </script>
</head>
<body>
    <div class="button-container">
        <button class="button-reload" onclick="reloadFunc()">Reload</button>
    </div>
    <table class="table-list">
        <thead>
            <tr>
                <td style="width: 100px;">ID</td>
                <td>Student Name</td>
                <td>Student Code</td>
                <td>Create Date</td>
                <td>MC Image</td>
                <td>MC Content</td>
            </tr>
        </thead>
        <tbody>
            <%
                for (int i = 0; i < dtDataList.Rows.Count; i++)
                {
                    %>
                    <tr>
                        <td><%= i + 1 %></td>
                        <td><%= dtDataList.Rows[i]["student_name"]%></td>
                        <td><%= dtDataList.Rows[i]["student_code"]%></td>
                        <td><%= Convert.ToDateTime(dtDataList.Rows[i]["mc_date"]).ToString("yyyy-MM-dd HH:mm:ss")%></td>
                        <td><a href="javascript:previewOpen('<%= dtDataList.Rows[i]["mc_image"]%>')"><%= dtDataList.Rows[i]["mc_image"]%></a></td>
                        <td><%= dtDataList.Rows[i]["mc_content"]%></td>
                    </tr>
                    <%
                }
            %>
        </tbody>
    </table>
    <div id="preview-layer" onclick="previewClose()">
        <img id="preview-image" style="max-width: 90vw; height: 90vh;" />
    </div>
</body>
</html>
