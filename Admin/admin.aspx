<%@ page language="VB" autoeventwireup="false" inherits="Admin_admin, App_Web_jgc2ijq0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>后台管理系统</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" media="all" />
    <link href="../css/flexslider.css" type="text/css" rel="stylesheet" media="screen" />
    <link href="../css/tipsy.css" type="text/css" rel="stylesheet" media="screen" />
    <link href="../css/jcarousel.css" type="text/css" rel="stylesheet" media="screen" />
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <!--<script type="text/javascript" src="js/jquery-1.6.4.min.js"></script>-->
    <script type="text/javascript" src="../js/jquery.flexslider-min.js"></script>
    <!--featured slider-->
    <script type="text/javascript" src="../js/jquery.tipsy.js"></script>
    <!--tooltip-->
    <!--mediaqueries-->
    <script type="text/javascript" src="../js/jquery.visualNav.min.js"></script>
    <!--navigation-->
    <!--filterable work-->
    <!--pretty photo-->
    <!--latest work-->
    <script type="text/javascript">
        function mycarousel_initCallback(carousel) {
            // Disable autoscrolling if the user clicks the prev or next button.
            carousel.buttonNext.bind('click', function () {
                carousel.startAuto(0);
            });

            carousel.buttonPrev.bind('click', function () {
                carousel.startAuto(0);
            });

            // Pause autoscrolling if the user moves with the cursor over the clip.
            carousel.clip.hover(function () {
                carousel.stopAuto();
            }, function () {
                carousel.startAuto();
            });
        };
        jQuery(document).ready(function () {
            jQuery('#mycarousel').jcarousel({
                auto: 2,
                wrap: 'last',
                initCallback: mycarousel_initCallback
            });
        });
    </script>
    <!--BEGIN:Accordion	-->
    <script type="text/javascript" src="../js/jquery-ui-1.8.17.custom.min.js"></script>
    <!--accordion-->
    <script type="text/javascript">
	$(function() {
		$( "#accordion" ).accordion({
		header: "h4",
		autoHeight: false, 
		});
	});
    </script>
    <!--BEGIN:mosaic-->
    <link rel="stylesheet" href="../css/mosaic.css" type="text/css" media="screen" />
    <script type="text/javascript" src="../js/mosaic.1.0.1.js"></script>
    <script type="text/javascript">
        jQuery(function ($) {
            $('.views').mosaic({
                opacity: 0.8			//Opacity for overlay (0-1)
            });
        });
    </script>
    <!--elastic slider-->
    <!--GOOGLE MAP PLUGIN-->
    <!--[if lt IE 9]>
<script src="js/html5.js" type="text/javascript"></script>
<![endif]-->
    <script type="text/javascript" src="../js/custom.js"></script>
    <script language="javascript" type="text/javascript">
        <!--

        function selectclick() {
            lnk = document.getElementById("select");
            lnk.click();
        }
        function newsclick() {
            lnk = document.getElementById("news");
            lnk.click();
        }
        function forumclick() {
            lnk = document.getElementById("forum");
            lnk.click();
        }
    
        // -->
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="page">
            <div id="page_container">
                <aside id="header">
      <h1 id="logo"><a class="menu" href="#home">View</a></h1>
      <nav id="main-nav">
        <ul>
          <li><a class="menu" href="#member">会员专区管理</a></li>
          <li><a class="menu" href="#otherweblink">其他网站管理</a></li>
          <li><a class="menu" href="#news">新闻公告区管理</a></li>
          <li><a class="menu" href="#forum">主题讨论区管理</a></li>
          <li><a class="menu" href="#download">下载管理</a></li>
          <li><a class="menu" href="#introduction">家园成员介绍管理</a></li>
          <li><a class="menu" href="#activities">家园活动介绍管理</a></li>
          <li class="external"><a href="../index.aspx">返回首页</a></li>
        </ul>
      </nav>
     
      <div id="copy-right">
        <asp:LoginView ID="LoginView1" runat="server">
                        <AnonymousTemplate>
                            <div id="loginview" style="font-size: large">您尚未登录</div>
                        </AnonymousTemplate>
                        <LoggedInTemplate>
                            <div id="loginview" style="font-size: large">欢迎 <asp:LoginName ID="LoginName1" runat="server" ForeColor="#0000CC" /> 的登录 请按这里<asp:LoginStatus ID="LoginStatus1" runat="server" /></div>
                        </LoggedInTemplate>
                        </asp:LoginView>
      </div>
    </aside>
                <section id="main">
      <div id="member" class="content">
        <div class="page_title">
          <h2><span>会员专区管理</span></h2>
        </div>
        <table><tr><td><a href="#delete">删除会员</a></td><td><a href="#select">查询会员</a></td></tr></table>
        <div id="delete"><asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserId" 
                DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                            CommandName="Select" onclientclick="return confirm('确定要删除？')" Text="删除" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="UserName" HeaderText="账号" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="Email" HeaderText="电子邮件" SortExpression="Email" />
                <asp:BoundField DataField="CreateDate" HeaderText="创建日期" 
                    SortExpression="CreateDate" />
                <asp:BoundField DataField="LastLoginDate" HeaderText="最后一次登入" 
                    SortExpression="LastLoginDate" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MembersDB %>" 
                SelectCommand="SELECT [UserId], [Email], [CreateDate], [LastLoginDate], [UserName] FROM [vw_aspnet_MembershipUsers]">
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView2" runat="server" Width="125px" Height="50px" 
                AutoGenerateRows="False" DataKeyNames="UserId" DataSourceID="SqlDataSource3">
                <Fields>
                    <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" 
                        SortExpression="UserId" />
                    <asp:BoundField DataField="LastUpdatedDate" HeaderText="LastUpdatedDate" 
                        SortExpression="LastUpdatedDate" />
                    <asp:BoundField DataField="DataSize" HeaderText="DataSize" ReadOnly="True" 
                        SortExpression="DataSize" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MembersDB %>" 
                SelectCommand="SELECT * FROM [vw_aspnet_Profiles] WHERE ([UserId] = @UserId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="UserId" 
                        PropertyName="SelectedValue" Type="Object" />
                </SelectParameters>
            </asp:SqlDataSource>
          </div>
          <div id="select">
          <p style="font-size: large; color: #FF0000">
           请输入账号或电子邮件:  <asp:TextBox ID="TxtSelect" runat="server"></asp:TextBox>
           <asp:Button ID="BtnSlect" runat="server" Text="查询" /></p>
              <asp:GridView ID="GridView6"
               AutoGenerateSelectButton="True" runat="server" AutoGenerateColumns="False" 
                  DataSourceID="SqlDataSource2">
                  <Columns>
                      <asp:BoundField DataField="UserName" HeaderText="用户名称" 
                          SortExpression="UserName" />
                      <asp:BoundField DataField="Email" HeaderText="邮箱" SortExpression="Email" />
                      <asp:BoundField DataField="CreateDate" DataFormatString="{0:d}" 
                          HeaderText="创建日期" SortExpression="CreateDate" />
                  </Columns>
              </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:MembersDB %>" 
                  SelectCommand="SELECT CreateDate, Email, UserName FROM vw_aspnet_MembershipUsers WHERE (UserName = @UserName) OR (Email = @Email)">
                   <SelectParameters>
                       <asp:ControlParameter ControlID="TxtSelect" Name="UserName" PropertyName="Text" 
                           Type="String" />
                       <asp:ControlParameter ControlID="TxtSelect" Name="Email" PropertyName="Text" 
                           Type="String" />
                   </SelectParameters>
              </asp:SqlDataSource>
              <asp:DetailsView ID="DetailsView1" runat="server" 
                  Width="300px" Height="50px" AutoGenerateRows="False" 
                  DataSourceID="SqlDataSource2" EmptyDataText="没有相关数据">
                  <Fields>
                      <asp:TemplateField  HeaderText ="用户名称">
                      <ItemTemplate >
                      <asp:Label runat ="server" ID ="UserName"></asp:Label>
                      </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField  HeaderText ="用户昵称">
                      <ItemTemplate >
                      <asp:Label runat ="server" ID ="UserNickName"></asp:Label>
                      </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField  HeaderText ="用户性别">
                      <ItemTemplate >
                      <asp:Label runat ="server" ID ="UserSex"></asp:Label>
                      </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField  HeaderText ="用户生日">
                      <ItemTemplate >
                      <asp:Label runat ="server" ID ="UserBirth"></asp:Label>
                      </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField  HeaderText ="用户电话">
                      <ItemTemplate >
                      <asp:Label runat ="server" ID ="UserPhone"></asp:Label>
                      </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField  HeaderText ="用户手机">
                      <ItemTemplate >
                      <asp:Label runat ="server" ID ="UserMobile"></asp:Label>
                      </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField  HeaderText ="用户住址">
                      <ItemTemplate >
                      国家：
                      <asp:Label runat ="server" ID ="Country"></asp:Label>
                      <br />
                      城市：
                      <asp:Label runat ="server" ID ="City"></asp:Label>
                      <br />
                      具体住址：
                      <asp:Label runat ="server" ID ="Detail"></asp:Label>
                      <br />
                      </ItemTemplate>
                      </asp:TemplateField>
                  </Fields>
              </asp:DetailsView>
    </div>
      </div>
      <!-- END: .content -->
      <div id="otherweblink" class="content">
        <div class="page_title">
          <h2><span>其他网站</span></h2>
        </div>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
              AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="webLink_ID" 
              DataSourceID="SqlDataSource4">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" 
                    ShowDeleteButton="True" />
                <asp:BoundField DataField="webLink_URL" HeaderText="网址" 
                    SortExpression="webLink_URL" />
                <asp:BoundField DataField="webLink_Text" HeaderText="描述" 
                    SortExpression="webLink_Text" />
            </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
              ConnectionString="<%$ ConnectionStrings:WebSiteDB %>" 
              DeleteCommand="DELETE FROM [webLink] WHERE [webLink_ID] = @webLink_ID" 
              InsertCommand="INSERT INTO [webLink] ([webLink_URL], [webLink_Text]) VALUES (@webLink_URL, @webLink_Text)" 
              SelectCommand="SELECT * FROM [webLink]" 
              UpdateCommand="UPDATE [webLink] SET [webLink_URL] = @webLink_URL, [webLink_Text] = @webLink_Text WHERE [webLink_ID] = @webLink_ID">
              <DeleteParameters>
                  <asp:Parameter Name="webLink_ID" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="webLink_URL" Type="String" />
                  <asp:Parameter Name="webLink_Text" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="webLink_URL" Type="String" />
                  <asp:Parameter Name="webLink_Text" Type="String" />
                  <asp:Parameter Name="webLink_ID" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <asp:DetailsView ID="DetailsView3" runat="server" Width="200px" Height="50px" 
              AutoGenerateRows="False" DataKeyNames="webLink_ID" 
              DataSourceID="SqlDataSource5">
              <Fields>
                  <asp:BoundField DataField="webLink_URL" HeaderText="网址" 
                      SortExpression="webLink_URL" />
                  <asp:BoundField DataField="webLink_Text" HeaderText="描述" 
                      SortExpression="webLink_Text" />
                  <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                      ShowEditButton="True" ShowInsertButton="True" />
              </Fields>
              <HeaderTemplate>
                  所选取的网站资料如下
              </HeaderTemplate>
          </asp:DetailsView>
          <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
              ConnectionString="<%$ ConnectionStrings:WebSiteDB %>" 
              DeleteCommand="DELETE FROM [webLink] WHERE [webLink_ID] = @webLink_ID" 
              InsertCommand="INSERT INTO [webLink] ([webLink_URL], [webLink_Text]) VALUES (@webLink_URL, @webLink_Text)" 
              SelectCommand="SELECT * FROM [webLink] WHERE ([webLink_ID] = @webLink_ID)" 
              UpdateCommand="UPDATE [webLink] SET [webLink_URL] = @webLink_URL, [webLink_Text] = @webLink_Text WHERE [webLink_ID] = @webLink_ID">
              <DeleteParameters>
                  <asp:Parameter Name="webLink_ID" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="webLink_URL" Type="String" />
                  <asp:Parameter Name="webLink_Text" Type="String" />
              </InsertParameters>
              <SelectParameters>
                  <asp:ControlParameter ControlID="GridView2" Name="webLink_ID" 
                      PropertyName="SelectedValue" Type="Int32" />
              </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="webLink_URL" Type="String" />
                  <asp:Parameter Name="webLink_Text" Type="String" />
                  <asp:Parameter Name="webLink_ID" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
      </div>
      <!-- END: .content -->
      <div id="news" class="content">
        <div class="page_title">
          <h2><span>新闻公告区管理</span></h2>
        </div>
        <div id="newsdetail">
        <p align="left" style="font-size: xx-large; font-weight: 700; color: #0000FF">
        <asp:Button ID="Button1" runat="server" Font-Size="X-Large" Text="新增" />
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="news_ID" 
        DataSourceID="SqlDataSource6" Font-Size="Large">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                        CommandName="Delete" onclientclick="return confirm(&quot;确定要删除此条新闻？&quot;)" 
                        Text="删除" Width="50px" />
                </ItemTemplate>
                <ItemStyle Width="50px" />
            </asp:TemplateField>
            <asp:BoundField DataField="news_Type" HeaderText="新闻类型" 
                SortExpression="news_Type">
            <ItemStyle Width="120px" />
            </asp:BoundField>
            <asp:BoundField DataField="news_Date" HeaderText="发布日期" 
                SortExpression="news_Date" DataFormatString="{0:d}">
            <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="news_Image" HeaderText="图片名称" 
                SortExpression="news_Image">
            <ItemStyle Width="80px" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="news_ID" 
                DataNavigateUrlFormatString="Ad_NewsDetail.aspx?news_ID={0}" 
                DataTextField="news_Title" HeaderText="标题">
            <ItemStyle Width="300px" />
            </asp:HyperLinkField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
        ConnectionString="<%$ ConnectionStrings:WebSiteDB %>" 
        DeleteCommand="DELETE FROM [news] WHERE [news_ID] = @news_ID" 
        InsertCommand="INSERT INTO [news] ([news_Type], [news_Date], [news_Title], [news_Content], [news_Image]) VALUES (@news_Type, @news_Date, @news_Title, @news_Content, @news_Image)" 
        SelectCommand="SELECT * FROM [news] ORDER BY [news_Date] DESC" 
        UpdateCommand="UPDATE [news] SET [news_Type] = @news_Type, [news_Date] = @news_Date, [news_Title] = @news_Title, [news_Content] = @news_Content, [news_Image] = @news_Image WHERE [news_ID] = @news_ID">
        <DeleteParameters>
            <asp:Parameter Name="news_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="news_Type" Type="String" />
            <asp:Parameter Name="news_Date" Type="DateTime" />
            <asp:Parameter Name="news_Title" Type="String" />
            <asp:Parameter Name="news_Content" Type="String" />
            <asp:Parameter Name="news_Image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="news_Type" Type="String" />
            <asp:Parameter Name="news_Date" Type="DateTime" />
            <asp:Parameter Name="news_Title" Type="String" />
            <asp:Parameter Name="news_Content" Type="String" />
            <asp:Parameter Name="news_Image" Type="String" />
            <asp:Parameter Name="news_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</div>
<div></div> 
      </div>
      <!-- END: .content -->
      <div id="forum" class="content">
        <div class="page_title">
          <h2><span>主题讨论区管理</span></h2>
        </div>
        <div id="forumview">
        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="frmMain_ID" 
        DataSourceID="SqlDataSource7">
        <Columns>
        <asp:TemplateField HeaderText="主题">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" onclick="forumclick();" 
                    NavigateUrl='<%# Eval("frmMain_ID", "admin.aspx?frmMain_ID={0}") %>' 
                    Text='<%# Eval("frmMain_Subject") %>'></asp:HyperLink>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/design/new.gif" />
                <asp:Image ID="Image2" runat="server" 
                    ImageUrl="~/Images/design/hot.gif" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="frmMain_Name" HeaderText="发表者" 
            SortExpression="frmMain_Name" />
        <asp:BoundField DataField="frmMain_Time" HeaderText="发表时间" 
            SortExpression="frmMain_Time" DataFormatString="{0:d}" />
        <asp:BoundField DataField="frmMain_Hits" HeaderText="点阅" 
            SortExpression="frmMain_Hits" />
        <asp:BoundField DataField="frmMain_Re" HeaderText="回复" 
            SortExpression="frmMain_Re" />
        <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="Deleteforum" runat="server" CausesValidation="False" 
                    CommandName="Delete" onclientclick="return confirm(&quot;确定要删除&quot;)" 
                    Text="删除" onclick="Deleteforum_Click" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource7" runat="server" 
    ConnectionString="<%$ ConnectionStrings:WebSiteDB %>" 
    DeleteCommand="DELETE FROM [frmMain] WHERE [frmMain_ID] = @frmMain_ID" 
    InsertCommand="INSERT INTO [frmMain] ([frmMain_Subject], [frmMain_Content], [frmMain_Time], [frmMain_Name], [frmMain_Sex], [frmMain_Email], [frmMain_IP], [frmMain_Hits], [frmMain_Re]) VALUES (@frmMain_Subject, @frmMain_Content, @frmMain_Time, @frmMain_Name, @frmMain_Sex, @frmMain_Email, @frmMain_IP, @frmMain_Hits, @frmMain_Re)" 
    SelectCommand="SELECT * FROM [frmMain]" 
    UpdateCommand="UPDATE [frmMain] SET [frmMain_Subject] = @frmMain_Subject, [frmMain_Content] = @frmMain_Content, [frmMain_Time] = @frmMain_Time, [frmMain_Name] = @frmMain_Name, [frmMain_Sex] = @frmMain_Sex, [frmMain_Email] = @frmMain_Email, [frmMain_IP] = @frmMain_IP, [frmMain_Hits] = @frmMain_Hits, [frmMain_Re] = @frmMain_Re WHERE [frmMain_ID] = @frmMain_ID">
    <DeleteParameters>
        <asp:Parameter Name="frmMain_ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="frmMain_Subject" Type="String" />
        <asp:Parameter Name="frmMain_Content" Type="String" />
        <asp:Parameter Name="frmMain_Time" Type="DateTime" />
        <asp:Parameter Name="frmMain_Name" Type="String" />
        <asp:Parameter Name="frmMain_Sex" Type="String" />
        <asp:Parameter Name="frmMain_Email" Type="String" />
        <asp:Parameter Name="frmMain_IP" Type="String" />
        <asp:Parameter Name="frmMain_Hits" Type="Int32" />
        <asp:Parameter Name="frmMain_Re" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="frmMain_Subject" Type="String" />
        <asp:Parameter Name="frmMain_Content" Type="String" />
        <asp:Parameter Name="frmMain_Time" Type="DateTime" />
        <asp:Parameter Name="frmMain_Name" Type="String" />
        <asp:Parameter Name="frmMain_Sex" Type="String" />
        <asp:Parameter Name="frmMain_Email" Type="String" />
        <asp:Parameter Name="frmMain_IP" Type="String" />
        <asp:Parameter Name="frmMain_Hits" Type="Int32" />
        <asp:Parameter Name="frmMain_Re" Type="Int32" />
        <asp:Parameter Name="frmMain_ID" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
    </div>
    <div id="forumdetail">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="frmMain_ID" 
        DataSourceID="SqlDataSource8">
        <EditItemTemplate>
            frmMain_ID:
            <asp:Label ID="frmMain_IDLabel1" runat="server" 
                Text='<%# Eval("frmMain_ID") %>' />
            <br />
            frmMain_Subject:
            <asp:TextBox ID="frmMain_SubjectTextBox" runat="server" 
                Text='<%# Bind("frmMain_Subject") %>' />
            <br />
            frmMain_Content:
            <asp:TextBox ID="frmMain_ContentTextBox" runat="server" 
                Text='<%# Bind("frmMain_Content") %>' />
            <br />
            frmMain_Time:
            <asp:TextBox ID="frmMain_TimeTextBox" runat="server" 
                Text='<%# Bind("frmMain_Time") %>' />
            <br />
            frmMain_Name:
            <asp:TextBox ID="frmMain_NameTextBox" runat="server" 
                Text='<%# Bind("frmMain_Name") %>' />
            <br />
            frmMain_Sex:
            <asp:TextBox ID="frmMain_SexTextBox" runat="server" 
                Text='<%# Bind("frmMain_Sex") %>' />
            <br />
            frmMain_Email:
            <asp:TextBox ID="frmMain_EmailTextBox" runat="server" 
                Text='<%# Bind("frmMain_Email") %>' />
            <br />
            frmMain_IP:
            <asp:TextBox ID="frmMain_IPTextBox" runat="server" 
                Text='<%# Bind("frmMain_IP") %>' />
            <br />
            frmMain_Hits:
            <asp:TextBox ID="frmMain_HitsTextBox" runat="server" 
                Text='<%# Bind("frmMain_Hits") %>' />
            <br />
            frmMain_Re:
            <asp:TextBox ID="frmMain_ReTextBox" runat="server" 
                Text='<%# Bind("frmMain_Re") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            frmMain_Subject:
            <asp:TextBox ID="frmMain_SubjectTextBox" runat="server" 
                Text='<%# Bind("frmMain_Subject") %>' />
            <br />
            frmMain_Content:
            <asp:TextBox ID="frmMain_ContentTextBox" runat="server" 
                Text='<%# Bind("frmMain_Content") %>' />
            <br />
            frmMain_Time:
            <asp:TextBox ID="frmMain_TimeTextBox" runat="server" 
                Text='<%# Bind("frmMain_Time") %>' />
            <br />
            frmMain_Name:
            <asp:TextBox ID="frmMain_NameTextBox" runat="server" 
                Text='<%# Bind("frmMain_Name") %>' />
            <br />
            frmMain_Sex:
            <asp:TextBox ID="frmMain_SexTextBox" runat="server" 
                Text='<%# Bind("frmMain_Sex") %>' />
            <br />
            frmMain_Email:
            <asp:TextBox ID="frmMain_EmailTextBox" runat="server" 
                Text='<%# Bind("frmMain_Email") %>' />
            <br />
            frmMain_IP:
            <asp:TextBox ID="frmMain_IPTextBox" runat="server" 
                Text='<%# Bind("frmMain_IP") %>' />
            <br />
            frmMain_Hits:
            <asp:TextBox ID="frmMain_HitsTextBox" runat="server" 
                Text='<%# Bind("frmMain_Hits") %>' />
            <br />
            frmMain_Re:
            <asp:TextBox ID="frmMain_ReTextBox" runat="server" 
                Text='<%# Bind("frmMain_Re") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td rowspan="2" style="border-style: double">
                        <asp:Image ID="Image1" runat="server" Height="60px" ImageAlign="AbsMiddle" 
                            ImageUrl='<%# "~/Images/design/"&iif(Eval("frmMain_Sex")=0,"male.jpg","female.jpg") %>' 
                            Width="60px" />
                    </td>
                    <td style="border-style: double">
                        主题：
                        <asp:Label ID="frmMain_SubjectLabel" runat="server" 
                            Text='<%# Bind("frmMain_Subject") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: double">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        姓名：
                        <asp:Label ID="frmMain_NameLabel" runat="server" 
                            Text='<%# Bind("frmMain_Name") %>' />
                        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/design/mail.gif" 
                            NavigateUrl='<%# "mailto:"& eval("frmMain_Email") %>'>HyperLink</asp:HyperLink>
                        IP:<asp:Label ID="frmMain_IPLabel" runat="server" 
                            Text='<%# Bind("frmMain_IP") %>' />
                        &nbsp;</td>
                    <td style="border-style: double">
                        发布时间：
                        <asp:Label ID="frmMain_TimeLabel" runat="server" 
                            Text='<%# Bind("frmMain_Time") %>' />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="border-style: double">
                        <p>内容：</p>
                        <asp:Label ID="frmMain_ContentLabel" runat="server" 
                            Text='<%# Replace(Eval("frmMain_Content"),vbcrlf,"<br>") %>' />
                    </td>
                </tr>
            </table>
            <br />
            &nbsp;<asp:Button ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="删除" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
        ConnectionString="<%$ ConnectionStrings:WebSiteDB %>" 
        DeleteCommand="DELETE FROM [frmMain] WHERE [frmMain_ID] = @frmMain_ID" 
        InsertCommand="INSERT INTO [frmMain] ([frmMain_Subject], [frmMain_Content], [frmMain_Time], [frmMain_Name], [frmMain_Sex], [frmMain_Email], [frmMain_IP], [frmMain_Hits], [frmMain_Re]) VALUES (@frmMain_Subject, @frmMain_Content, @frmMain_Time, @frmMain_Name, @frmMain_Sex, @frmMain_Email, @frmMain_IP, @frmMain_Hits, @frmMain_Re)" 
        SelectCommand="SELECT * FROM [frmMain] WHERE ([frmMain_ID] = @frmMain_ID)" 
        
    UpdateCommand="UPDATE [frmMain] SET [frmMain_Subject] = @frmMain_Subject, [frmMain_Content] = @frmMain_Content, [frmMain_Time] = @frmMain_Time, [frmMain_Name] = @frmMain_Name, [frmMain_Sex] = @frmMain_Sex, [frmMain_Email] = @frmMain_Email, [frmMain_IP] = @frmMain_IP, [frmMain_Hits] = @frmMain_Hits, [frmMain_Re] = @frmMain_Re WHERE [frmMain_ID] = @frmMain_ID">
        <DeleteParameters>
            <asp:Parameter Name="frmMain_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="frmMain_Subject" Type="String" />
            <asp:Parameter Name="frmMain_Content" Type="String" />
            <asp:Parameter Name="frmMain_Time" Type="DateTime" />
            <asp:Parameter Name="frmMain_Name" Type="String" />
            <asp:Parameter Name="frmMain_Sex" Type="String" />
            <asp:Parameter Name="frmMain_Email" Type="String" />
            <asp:Parameter Name="frmMain_IP" Type="String" />
            <asp:Parameter Name="frmMain_Hits" Type="Int32" />
            <asp:Parameter Name="frmMain_Re" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="frmMain_ID" QueryStringField="frmMain_ID" 
                Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="frmMain_Subject" Type="String" />
            <asp:Parameter Name="frmMain_Content" Type="String" />
            <asp:Parameter Name="frmMain_Time" Type="DateTime" />
            <asp:Parameter Name="frmMain_Name" Type="String" />
            <asp:Parameter Name="frmMain_Sex" Type="String" />
            <asp:Parameter Name="frmMain_Email" Type="String" />
            <asp:Parameter Name="frmMain_IP" Type="String" />
            <asp:Parameter Name="frmMain_Hits" Type="Int32" />
            <asp:Parameter Name="frmMain_Re" Type="Int32" />
            <asp:Parameter Name="frmMain_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<asp:DataList ID="DataList1" runat="server" DataKeyField="frmRe_ID" 
    DataSourceID="SqlDataSource9">
    <ItemTemplate>
        <table class="style1">
            <tr>
                <td rowspan="2" style="border-style: double">
                    <asp:Image ID="Image2" runat="server" Height="60px" 
                        ImageUrl='<%# "~/Images/design/"&iif(Eval("frmRe_Sex")=0,"male.jpg","female.jpg") %>' 
                        Width="60px" />
                </td>
                <td colspan="2" style="border-style: double">
                    <asp:Label ID="frmRe_SubjectLabel" runat="server" 
                        Text='<%# Eval("frmRe_Subject") %>' />
                </td>
            </tr>
            <tr>
                <td style="border-style: double" >姓名：
                    <asp:Label ID="frmRe_NameLabel" runat="server" 
                        Text='<%# Eval("frmRe_Name") %>' />
                    <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Images/design/mail.gif" 
                        NavigateUrl='<%# "mailto:"&Eval("frmRe_Email") %>'>HyperLink</asp:HyperLink>
                    IP:<asp:Label ID="frmRe_IPLabel" runat="server" 
                        Text='<%# Eval("frmRe_IP") %>' />
                </td>
                <td style="border-style: double">
                    <asp:Label ID="frmRe_TimeLabel" runat="server" 
                        Text='<%# Eval("frmRe_Time") %>' />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="border-style: double">
                    <p>内容：</p>
                    <asp:Label ID="frmRe_ContentLabel" runat="server" 
                        Text='<%# Replace(Eval("frmRe_Content"),vbcrlf,"<br>") %>' />
                </td>
            </tr>
        </table>
        <asp:Button ID="DeleteData" runat="server" CausesValidation="False"  Text="删除"
            CommandName="delete" onclientclick="return confirm(&quot;确定要删除吗？&quot;)" 
            onclick="DeleteData_Click"></asp:Button>
<br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource9" runat="server" 
    ConnectionString="<%$ ConnectionStrings:WebSiteDB %>" 
    SelectCommand="SELECT * FROM [frmRe] WHERE ([frmMain_ID] = @frmMain_ID) ORDER BY [frmRe_Time] DESC"
            DeleteCommand="DELETE FROM [frmRe] WHERE [frmRe_ID] = @frmRe_ID" 
            InsertCommand="INSERT INTO [frmRe] ([frmMain_ID], [frmRe_Subject], [frmRe_Content], [frmRe_Time], [frmRe_Name], [frmRe_Sex], [frmRe_Email], [frmRe_IP], [frmRe_Image]) VALUES (@frmMain_ID, @frmRe_Subject, @frmRe_Content, @frmRe_Time, @frmRe_Name, @frmRe_Sex, @frmRe_Email, @frmRe_IP, @frmRe_Image)" 
            
            UpdateCommand="UPDATE [frmRe] SET [frmMain_ID] = @frmMain_ID, [frmRe_Subject] = @frmRe_Subject, [frmRe_Content] = @frmRe_Content, [frmRe_Time] = @frmRe_Time, [frmRe_Name] = @frmRe_Name, [frmRe_Sex] = @frmRe_Sex, [frmRe_Email] = @frmRe_Email, [frmRe_IP] = @frmRe_IP, [frmRe_Image] = @frmRe_Image WHERE [frmRe_ID] = @frmRe_ID">
    <DeleteParameters>
        <asp:Parameter Name="frmRe_ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="frmMain_ID" Type="Int32" />
        <asp:Parameter Name="frmRe_Subject" Type="String" />
        <asp:Parameter Name="frmRe_Content" Type="String" />
        <asp:Parameter Name="frmRe_Time" Type="DateTime" />
        <asp:Parameter Name="frmRe_Name" Type="String" />
        <asp:Parameter Name="frmRe_Sex" Type="String" />
        <asp:Parameter Name="frmRe_Email" Type="String" />
        <asp:Parameter Name="frmRe_IP" Type="String" />
        <asp:Parameter Name="frmRe_Image" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:QueryStringParameter Name="frmMain_ID" QueryStringField="frmMain_ID" 
            Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="frmMain_ID" Type="Int32" />
        <asp:Parameter Name="frmRe_Subject" Type="String" />
        <asp:Parameter Name="frmRe_Content" Type="String" />
        <asp:Parameter Name="frmRe_Time" Type="DateTime" />
        <asp:Parameter Name="frmRe_Name" Type="String" />
        <asp:Parameter Name="frmRe_Sex" Type="String" />
        <asp:Parameter Name="frmRe_Email" Type="String" />
        <asp:Parameter Name="frmRe_IP" Type="String" />
        <asp:Parameter Name="frmRe_Image" Type="String" />
        <asp:Parameter Name="frmRe_ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    </div>
      </div>
      <!-- END: .content -->
      
      <div id="download" class="content">
        <div class="page_title">
          <h2><span>下载专区</span></h2>
        </div>
        <asp:Button ID="Button2" runat="server" Text="上传文件" Font-Size="X-Large"></asp:Button>
        <asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
              AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DownloadID" 
              DataSourceID="SqlDataSource10">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                            CommandName="Delete" onclientclick="return confirm('确定要删除？')" Text="删除" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:HyperLinkField DataNavigateUrlFields="DownloadID" 
                    DataNavigateUrlFormatString="Ad_Download.aspx?DownloadID={0}" 
                    DataTextField="DownloadName" HeaderText="文档名称" />
                <asp:BoundField DataField="DownloadType" HeaderText="文档类型" 
                    SortExpression="DownloadType"/>
                <asp:BoundField DataField="DownloadDate" DataFormatString="{0:d}" 
                    HeaderText="上传时间" SortExpression="DownloadDate" />
            </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
              ConnectionString="<%$ ConnectionStrings:WebSiteDB %>" 
              DeleteCommand="DELETE FROM [download] WHERE [DownloadID] = @DownloadID" 
              InsertCommand="INSERT INTO [download] ([DownloadName], [DownloadType], [DownloadDate]) VALUES (@DownloadName, @DownloadType, @DownloadDate)" 
              SelectCommand="SELECT * FROM [download] ORDER BY [DownloadDate] DESC" 
              
              UpdateCommand="UPDATE [download] SET [DownloadName] = @DownloadName, [DownloadType] = @DownloadType, [DownloadDate] = @DownloadDate WHERE [DownloadID] = @DownloadID">
              <DeleteParameters>
                  <asp:Parameter Name="DownloadID" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="DownloadName" Type="String" />
                  <asp:Parameter Name="DownloadType" Type="String" />
                  <asp:Parameter Name="DownloadDate" Type="DateTime" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="DownloadName" Type="String" />
                  <asp:Parameter Name="DownloadType" Type="String" />
                  <asp:Parameter Name="DownloadDate" Type="DateTime" />
                  <asp:Parameter Name="DownloadID" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
        <!-- rg-gallery --> 
      </div>
      <!-- END: .content -->
      <div id="introduction" class="content">
        <div class="page_title">
          <h2><span>家园成员介绍管理</span></h2>
        </div>
        <div id="introduction_detail">
        <p align="left" style="font-size: xx-large; font-weight: 700; color: #0000FF">
        <asp:Button ID="Button3" runat="server" Font-Size="X-Large" Text="新增" />
        <asp:GridView ID="GridView7" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="member_ID" 
        DataSourceID="SqlDataSource11" Font-Size="Large">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                        CommandName="Delete" onclientclick="return confirm(&quot;确定要删除此成员信息？&quot;)" 
                        Text="删除" Width="50px" />
                </ItemTemplate>
                <ItemStyle Width="50px" />
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="member_ID" 
                DataNavigateUrlFormatString="Ad_IntroDetail.aspx?member_ID={0}" 
                DataTextField="member_Name" HeaderText="成员名称">
            <ItemStyle Width="120px" />
            </asp:HyperLinkField>
            <asp:BoundField DataField="member_Job" HeaderText="成员职务" 
                SortExpression="member_Job">
            <ItemStyle Width="120px" />
            </asp:BoundField>
            <asp:BoundField DataField="member_Class" HeaderText="成员班级" 
                SortExpression="member_Class">
            <ItemStyle Width="120px" />
            </asp:BoundField>
            <asp:BoundField DataField="member_Dorm" HeaderText="成员寝室" 
                SortExpression="member_Dorm">
            <ItemStyle Width="120px" />
            </asp:BoundField>
            <asp:BoundField DataField="member_Tel" HeaderText="成员电话" 
                SortExpression="member_Tel">
            <ItemStyle Width="120px" />
            </asp:BoundField>
            <asp:BoundField DataField="member_Image" HeaderText="成员图片" 
                SortExpression="member_Image">
            <ItemStyle Width="80px" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
        ConnectionString="<%$ ConnectionStrings:WebSiteDB %>" 
        DeleteCommand="DELETE FROM [members] WHERE [member_ID] = @member_ID" 
        InsertCommand="INSERT INTO [members] ([member_Name], [member_Job], [member_Class], [member_Dorm], [member_Tel], [member_Image]) VALUES (@member_Name, @member_Job, @member_Class, @member_Dorm, @member_Tel, @member_Image)" 
        SelectCommand="SELECT * FROM [members] ORDER BY [member_ID] DESC" 
        UpdateCommand="UPDATE [members] SET [member_Name] = @member_Name, [member_Job] = @member_Job, [member_Class] = @member_Class, [member_Dorm] = @member_Dorm, [member_Tel] = @member_Tel, [member_Image] = @member_Image WHERE [member_ID] = @member_ID">
        <DeleteParameters>
            <asp:Parameter Name="member_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="member_Name" Type="String" />
            <asp:Parameter Name="member_Job" Type="String" />
            <asp:Parameter Name="member_Class" Type="String" />
            <asp:Parameter Name="member_Dorm" Type="String" />
            <asp:Parameter Name="member_Tel" Type="String" />
            <asp:Parameter Name="member_Image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="member_Name" Type="String" />
            <asp:Parameter Name="member_Job" Type="String" />
            <asp:Parameter Name="member_Class" Type="String" />
            <asp:Parameter Name="member_Dorm" Type="String" />
            <asp:Parameter Name="member_Tel" Type="String" />
            <asp:Parameter Name="member_Image" Type="String" />
            <asp:Parameter Name="member_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</div>
<div></div> 
      </div>
 <!-- END: .content -->
 <div id="activities" class="content">
        <div class="page_title">
          <h2><span>家园活动介绍管理</span></h2>
        </div>
        <div id="activity_detail">
        <p align="left" style="font-size: xx-large; font-weight: 700; color: #0000FF">
        <asp:Button ID="Button4" runat="server" Font-Size="X-Large" Text="新增" />
        <asp:GridView ID="GridView8" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="activity_ID" 
        DataSourceID="SqlDataSource12" Font-Size="Large">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                        CommandName="Delete" onclientclick="return confirm(&quot;确定要删除此项活动介绍？&quot;)" 
                        Text="删除" Width="50px" />
                </ItemTemplate>
                <ItemStyle Width="50px" />
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="activity_ID" 
                DataNavigateUrlFormatString="Ad_ActivityDetail.aspx?activity_ID={0}" 
                DataTextField="activity_Name" HeaderText="活动名称">
            <ItemStyle Width="120px" />
            </asp:HyperLinkField>
            <asp:BoundField DataField="activity_Image" HeaderText="图片名称" 
                SortExpression="activity_Image">
            <ItemStyle Width="80px" />
            </asp:BoundField>
            
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource12" runat="server" 
        ConnectionString="<%$ ConnectionStrings:WebSiteDB %>" 
        DeleteCommand="DELETE FROM [activities] WHERE [activity_ID] = @activity_ID" 
        InsertCommand="INSERT INTO [activities] ([activity_Name], [activity_Content], [activity_Image]) VALUES (@activity_Name, @activity_Content, @activity_Image)" 
        SelectCommand="SELECT * FROM [activities] ORDER BY [activity_ID] DESC" 
        UpdateCommand="UPDATE [activities] SET [activity_Name] = @activity_Name, [activity_Content] = @activity_Content, [activity_Image] = @activity_Image WHERE [activity_ID] = @activity_ID">
        <DeleteParameters>
            <asp:Parameter Name="activity_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="activity_Name" Type="String" />
            <asp:Parameter Name="activity_Content" Type="String" />
            <asp:Parameter Name="activity_Image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="activity_Name" Type="String" />
            <asp:Parameter Name="activity_Content" Type="String" />
            <asp:Parameter Name="activity_Image" Type="String" />
            <asp:Parameter Name="activity_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</div>
<div></div> 
      </div>
      <!-- END: .content -->
      <div class="copyright"></div>
    </section>
            </div>
        </div>
        <script type="text/javascript">

            $(document).ready(function () {
                $("#ajax-contact-form").submit(function () {

                    var str = $(this).serialize();

                    $.ajax({
                        type: "POST",
                        url: "contact.php",
                        data: str,
                        success: function (msg) {

                            $("#note").ajaxComplete(function (event, request, settings) {

                                if (msg == 'OK') // Message Sent? Show the 'Thank You' message and hide the form
                                {
                                    result = '<div class="notification_ok">Your message has been sent. Thank you!</div>';
                                    $("#fields").hide();
                                }
                                else {
                                    result = '<ul class="error">' + msg + '</ul>';
                                }

                                $(this).html(result);

                            });

                        }

                    });

                    return false;

                });

            });
        </script>
        <div style="display: none">
            <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript'
                charset='gb2312'></script>
        </div>
    </div>
    </form>
</body>
</html>
