<%@ page title="论坛内容" language="VB" autoeventwireup="false" inherits="Main_ForumDetail, App_Web_xnp1f0g5" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>主题内容以及回应</title>
    <link href="../css/internet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
<!--
.style1 {
	color: #5c8bc7
}
-->
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <div class="navigation">
            <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" 
                Orientation="Horizontal" StaticDisplayLevels="2">
            </asp:Menu>
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        </div>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="frmMain_ID" DataSourceID="SqlDataSource3"
        Width="100%" AllowPaging="True">
        <ItemTemplate>
        <div class="topbar">
            <div style="width: 180px; float: left;">
                <span class="img-photo">
                    <asp:Image ID="Image2" runat="server" Height="170px" ImageAlign="AbsMiddle" ImageUrl='<%# "~/Images/design/"&iif(Eval("frmMain_Sex")=0,"male.jpg","female.jpg") %>'
                            Width="180px" /></span></div>
            <div style="width: 560px; float: right;">
                <div style="height: 70px; margin-bottom: 8px;">
                    <div style="width: 260px; float: left;">
                        <span class="toptitle">主题：<asp:Label ID="Label1" runat="server" Text='<%# Bind("frmMain_Subject") %>' /></span><br />
                        <br />
                        姓名：
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("frmMain_Name") %>' /></div>
                    <div style="width: 240px; float: right; text-align: right;">
                        <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Images/design/mail.gif"
                            NavigateUrl='<%# "mailto:"&eval("frmMain_Email") %>'>HyperLink</asp:HyperLink><br />
                        <br />
                        发布时间：<asp:Label
                            ID="Label3" runat="server" Text='<%# Bind("frmMain_Time","{0:d}") %>' /></div>
                </div>
            </div>
            <div style="width: 560px; float: right;">
                <div style="height: 70px; border-style: solid; border-width: 1px; padding: 5px; border-color: #CCCCCC;
                    background-color: #FFFFFF;">
                   <asp:Label ID="Label4" runat="server" Text='<%# Replace(Eval("frmMain_Content"),vbcrlf,"<br>") %>' /></div>
            </div>
        </div>
        </ItemTemplate>
        <FooterTemplate>
            <asp:Button ID="Button2" runat="server" Text="我要回应" PostBackUrl='<%# “ForumRepost.aspx?frmMain_ID=” & Eval(“frmMain_ID”) & “&frmMain_Subject=” &  HttpUtility.UrlEncode (Eval("frmMain_Subject")) %>'>
            </asp:Button>
        </FooterTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
        SelectCommand="SELECT * FROM [frmMain] WHERE ([frmMain_ID] = @frmMain_ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="frmMain_ID" QueryStringField="frmMain_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="frmRe_ID" Width="100%">
        <ItemTemplate>
        <div class="topbar">
            <div style="width: 180px; float: left;">
                <span class="img-photo">
                     <asp:Image ID="Image1" runat="server" Height="170px" ImageAlign="AbsMiddle" ImageUrl='<%# "~/Images/design/"&iif(Eval("frmRe_Sex")=0,"male.jpg","female.jpg") %>'
                            Width="170px" /></span></div>
            <div style="width: 560px; float: right;">
                <div style="height: 70px; margin-bottom: 8px;">
                    <div style="width: 260px; float: left;">
                        <span class="toptitle">主题：
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("frmRe_Subject") %>' /></span><br />
                        <br />
                        姓名：
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("frmRe_Name") %>' /></div>
                    <div style="width: 240px; float: right; text-align: right;">
                        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/design/mail.gif"
                            NavigateUrl='<%# "mailto:"&Eval("frmRe_Email") %>'>Mail</asp:HyperLink><br />
                        <br />
                        发布时间：
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("frmRe_Time","{0:d}") %>' /></div>
                </div>
            </div>
            <div style="width: 560px; float: right;">
                <div style="height: 70px; border-style: solid; border-width: 1px; padding: 5px; border-color: #CCCCCC;
                    background-color: #FFFFFF;">
                    <asp:Label ID="Label8" runat="server" Text='<%# Replace(Eval("frmRe_Content"),vbcrlf,"<br>") %>' /></div>
            </div>
        </div>
            <br />
        </ItemTemplate>
        <FooterTemplate>
        </FooterTemplate>
    </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
        SelectCommand="SELECT * FROM [frmRe] WHERE ([frmMain_ID] = @frmMain_ID) ORDER BY [frmRe_Time] DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="frmMain_ID" QueryStringField="frmMain_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
        SelectCommand="SELECT * FROM [frmRe] WHERE ([frmMain_ID] = @frmMain_ID) ORDER BY [frmRe_Time] DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="frmMain_ID" QueryStringField="frmMain_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="3" ShowBoxThreshold="1"
        AlwaysShow="True" FirstPageText="首页" LastPageText="末页" NextPageText="下一页" PrevPageText="上一页"
        OnPageChanging="AspNetPager1_PageChanging"  Width ="100%" Font-Bold ="True" 
            Font-Names="Arial Black" Font-Size="X-Large"/>
    <br class="clearboth" />
    <div class="footer">
        <p>
            Copyright (C) 电脑爱好者家园 All Rights Reserved.
        </p>
    </div>
    </form>
</body>
</html>
