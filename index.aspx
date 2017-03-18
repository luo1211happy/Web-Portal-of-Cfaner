<%@ page language="VB" autoeventwireup="false" inherits="index, App_Web_kkme5fzy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>首页</title>
    <script type="text/javascript" src="css/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="css/jquery.nivo.slider.js"></script>
    <link rel="stylesheet" type="text/css" href="css/inland-wood1.css" media="all" />
    <link href="css/style_main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
        <!--white div start -->
        <div id="white">
            <!--navigation part start -->
            <div id="navi">
                <asp:Menu ID="Menu2" runat="server" DataSourceID="SiteMapDataSource1" Orientation="Horizontal"
                    StaticDisplayLevels="2" Width="110%">
                </asp:Menu>
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
            </div>
            <!--navigation part end -->
            <!--sub link part start -->
            <div id="subLink">
                <ul>
                    <li><a href="index.aspx">回到首頁</a></li>
                    <li><a href="Main/WebLink.aspx">其他链接</a></li>
                </ul>
            </div>
            <!--sublink part end -->
            <!--header part start -->
            <div id="header">
                <img src="Images/cfaner3.jpg" alt="Cfaner Name" title="Cfaner Name" width="234" height="67"
                    class="logo" style="z-index: 2" />
                <!--flash part start -->
                <div id="flash">
                    <div style="display: inline-block">
                        <div class="slider-wrapper">
                            <div id="slider" class="nivoSlider">
                                <img src="Images/cfaner/1414294039077.jpg" alt="" style="width: 758px; height: 251px" />
                                <img src="Images/cfaner/20141211225412.jpg" alt="" style="width: 758px; height: 251px" />
                                <img src="Images/cfaner/IMG_20141026_093118.jpg" alt="" style="width: 758px; height: 251px" />
                                <img src="Images/cfaner/IMG_20141026_104502.jpg" alt="" style="width: 758px; height: 251px" />
                                <img src="Images/cfaner/IMG_20141026_104440.jpg" alt="" style="width: 758px; height: 251px" />
                            </div>
                        </div>
                    </div>
                </div>
                <!--flash part end -->
            </div>
            <!--header part end -->
            <!--body part start -->
            <div id="body">
                <!--black part start -->
                <div id="black">
                    <!--left part start -->
                    <div id="left">
                        <h2 class="welcome">
                            新闻消息</h2>
                        <p class="text">
                            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                                DataKeyNames="news_ID" DataSourceID="SqlDataSource1" PageSize="5" Width="100%">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <table>
                                                <tr>
                                                    <td style="color: #0978b5">
                                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("news_ID", "Main/NewsDetail.aspx?news_ID={0}") %>'
                                                            Text='<%# Eval("news_Title") %>' Font-Bold="true" ForeColor="White" Font-Size="Medium"></asp:HyperLink>
                                                    </td>
                                                    <td>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/design/new1.gif" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="news_Date" DataFormatString="{0:d}" SortExpression="news_Date"
                                        ItemStyle-HorizontalAlign="Justify" ItemStyle-VerticalAlign="Middle">
                                        <ItemStyle HorizontalAlign="Right" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
                                SelectCommand="SELECT [news_ID], [news_Type], [news_Date], [news_Title] FROM [news] ORDER BY [news_Date] DESC">
                            </asp:SqlDataSource>
                        </p>
                        <a class="read_more margin_top" href="Main/News.aspx">more</a>
                        <h2 class="welcome">
                            主题讨论区</h2>
                        <p class="text">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="frmMain_ID"
                                DataSourceID="SqlDataSource2" AllowSorting="True" PageSize="5" Width="100%">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("frmMain_ID", "Main/ForumDetail.aspx?frmMain_ID={0}") %>'
                                                            Text='<%# Eval("frmMain_Subject") %>' Font-Bold="true" ForeColor="White" Font-Size="Medium"></asp:HyperLink>
                                                    </td>
                                                    <td>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/design/new1.gif" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="frmMain_Time" DataFormatString="{0:d}" SortExpression="frmMain_Time"
                                        ItemStyle-HorizontalAlign="Justify" ItemStyle-VerticalAlign="Middle">
                                        <ItemStyle HorizontalAlign="Right" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
                                SelectCommand="SELECT * FROM [frmMain] ORDER BY [frmMain_Time] DESC"></asp:SqlDataSource>
                        </p>
                        <a class="read_more margin_top" href="/Main/Forum.aspx">more</a>
                        <h2 class="welcome">
                            下载区域</h2>
                        <p class="text">
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="DownloadID"
                                DataSourceID="SqlDataSource3" AllowSorting="True" PageSize="5" Width="100%">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("DownloadType", "~/Images/files/{0}") %>'
                                                            Text='<%# Eval("DownloadName") %>' Font-Bold="true" ForeColor="White" Font-Size="Medium"></asp:HyperLink>
                                                    </td>
                                                    <td>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/design/new1.gif" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="DownloadType" SortExpression="DownloadType"></asp:BoundField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="Download" runat="server" CausesValidation="False" CommandName="Select"
                                                OnClientClick="return confirm('确定要下载？')" Text="下载" BackColor="#0066FF" ForeColor="White"
                                                BorderColor="Black" BorderStyle="Solid" />
                                            <br />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="DownloadDate" DataFormatString="{0:d}" SortExpression="DownloadDate">
                                        <ItemStyle HorizontalAlign="Right" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
                                SelectCommand="SELECT * FROM [download] ORDER BY [DownloadDate] DESC"></asp:SqlDataSource>
                        </p>
                        <a class="read_more margin_top" href="/Main/Download.aspx">more</a>
                    </div>
                    <!--left part end -->
                    <!--right part start -->
                    <div id="right">
                        <p>
                            <asp:Login ID="Login1" runat="server" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px"
                                Font-Names="Verdana" Font-Size="Small" ForeColor="#333333" Width="220px" VisibleWhenLoggedIn="False">
                                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                                <LayoutTemplate>
                                    <table cellpadding="4" cellspacing="0" style="border-collapse: collapse; width: 220px;">
                                        <tr>
                                            <td>
                                                <table cellpadding="0" id="right" style="height: 200px; width: 220px;">
                                                    <tr>
                                                        <td align="center" colspan="2" style="color: White; font-size: 0.9em; font-weight: bold;">
                                                            <h2 class="services ">
                                                                登录</h2>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" class="green">
                                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名:</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="UserName" runat="server" Font-Size="0.8em" Height="20px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                                                ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。" ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" class="green">
                                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密码:</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password" Height="20px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                                                ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" class="green">
                                                            <asp:CheckBox ID="RememberMe" runat="server" Text="下次记住我。" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="2" style="color: Red;">
                                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="2">
                                                            <asp:Button ID="LoginButton" runat="server" BackColor="White" BorderColor="#507CD1"
                                                                BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Names="Verdana"
                                                                Font-Size="Medium" ForeColor="#284E98" Text="登录" ValidationGroup="Login1" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                                <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px"
                                    Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                                <TextBoxStyle Font-Size="0.8em" />
                                <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                            </asp:Login>
                        </p>
                        <br />
                        <p>
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC"
                                Font-Size="8pt" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                                ForeColor="#003399" Height="200px" Width="220px">
                                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                                    Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                <WeekendDayStyle BackColor="#CCCCFF" />
                            </asp:Calendar>
                        </p>
                        <br />
                        <p>
                        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/advertise.xml"
                            Height="60px" Width="220px" />
                        </p>
                    </div>
                    <!--right part end -->
                    <div class="spacer">
                    </div>
                </div>
                <!--back part end -->
            </div>
            <!--body part end -->
        </div>
        <!--white div end -->
        <!--footer part start -->
        <div id="footer">
            <p style="color: #000000">
                Copyright (C) 电脑爱好者家园 All Rights Reserved.</p>
        </div>
        <!--footer part end -->
    </div>
    </form>
    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    </script>
</body>
</html>
