<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileSearch.aspx.cs" Inherits="File.FileSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            검색어를 포함하는 파일 검색<br />
            검색어:<asp:TextBox ID="txtKeyWord" runat="server"></asp:TextBox>
            <br />
            파일명:<asp:DropDownList ID="ddlFileType" runat="server" OnSelectedIndexChanged="ddlFileType_SelectedIndexChanged">
                <asp:ListItem Value="0">워드(*.doc)</asp:ListItem>
                <asp:ListItem Value="1">파워포인트(*.ppt)</asp:ListItem>
                <asp:ListItem Value="2">한글(*.hwp)</asp:ListItem>
                <asp:ListItem Value="3">어도비(*.pdf)</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Button ID="btnSearch" runat="server" Text="검색어 보기" OnClick="btnSearch_Click" />
        </div>
    </form>
</body>
</html>
