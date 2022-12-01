<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClubList.aspx.cs" Inherits="SchoolInfo.Admin.ClubList" %>

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
        function addFunc() {
            location.href = "/Admin/ClubAdd.aspx";
        }

        function reloadFunc() {
            location.reload();
        }

        function editFunc(id) {
            location.href = "/Admin/ClubUpdate.aspx?id=" + id;
        }

        function deleteFunc(id) {
            if (confirm("confirm delete?")) {
                location.href = "/Handler/ClubDelete.aspx?id=" + id;
            }
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
        <button class="button-add" onclick="addFunc()">Add</button>
        <button class="button-reload" onclick="reloadFunc()">Reload</button>
    </div>
    <table class="table-list">
        <thead>
            <tr>
                <td style="width: 100px;">ID</td>
                <td>Club Name</td>
                <td>Club Image</td>
                <td>Club Content</td>
                <td style="width: 200px;">Operation</td>
            </tr>
        </thead>
        <tbody>
            <%
                for (int i = 0; i < dtDataList.Rows.Count; i++)
                {
                    %>
                    <tr>
                        <td><%= i + 1 %></td>
                        <td><%= dtDataList.Rows[i]["club_name"]%></td>
                        <td><a href="javascript:previewOpen('<%= dtDataList.Rows[i]["club_image"]%>')"><%= dtDataList.Rows[i]["club_image"]%></a></td>
                        <td><%= dtDataList.Rows[i]["club_content"]%></td>
                        <td>
                            <button class="button-edit" onclick="editFunc(<%= dtDataList.Rows[i]["club_id"]%>)">Edit</button>
                            <button class="button-delete" onclick="deleteFunc(<%= dtDataList.Rows[i]["club_id"]%>)">Delete</button>
                        </td>
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
