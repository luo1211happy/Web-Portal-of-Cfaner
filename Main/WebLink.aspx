<%@ page title="链接页面" language="VB" masterpagefile="~/MasterPage.master" autoeventwireup="false" inherits="Main_WebLink, App_Web_xnp1f0g5" %>

<%-- 在此处添加内容控件 --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="CustomImage" DataSourceID="SqlDataSource1"
        DataTextField="webLink_Text" DataValueField="webLink_URL" DisplayMode="HyperLink"
        Target="_blank">
        <asp:ListItem></asp:ListItem>
    </asp:BulletedList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
        SelectCommand="SELECT [webLink_URL], [webLink_Text] FROM [webLink]"></asp:SqlDataSource>
</asp:Content>
