
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileSearchResult.aspx.cs" Inherits="File.FileSearchResult"  %>
<%@PreviousPageType VirtualPath="FileSearch.aspx" %>

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
            <asp:HyperLink ID="InkSearchString" runat="server" Target="_blank" EnableTheming="True">HyperLink</asp:HyperLink>
            <asp:Button ID="btnGoBack" runat="server" PostBackUrl="~/FileSearch.aspx" Text="이전 페이지로 가기" />
        </div>
    </form>
</body>
</html>
