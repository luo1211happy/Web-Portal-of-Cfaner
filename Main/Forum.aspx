<%@ page title="讨论版块" language="VB" masterpagefile="~/Admin/Admin.master" autoeventwireup="false" inherits="Main_Forum, App_Web_xnp1f0g5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2 style="background-color: #0000FF">
        主题讨论区</h2>
    <p>
        <asp:Button runat="server" Text="发表主题" PostBackUrl="~/Member/ForumPost.aspx" /></p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            DataKeyNames="frmMain_ID" DataSourceID="SqlDataSource1" SkinID="Grid590" Width="100%"
            HorizontalAlign="Center">
            <Columns>
                <asp:TemplateField HeaderText="主题">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("frmMain_ID", "ForumDetail.aspx?frmMain_ID={0}") %>'
                            Text='<%# Eval("frmMain_Subject") %>'></asp:HyperLink>
                        &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/Images/design/new.gif" />
                        &nbsp;<asp:Image ID="Image2" runat="server" ImageUrl="~/Images/design/hot.gif" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="frmMain_Name" HeaderText="发表者" SortExpression="frmMain_Name" />
                <asp:BoundField DataField="frmMain_Time" DataFormatString="{0:d}" HeaderText="发表日期"
                    HtmlEncode="False" SortExpression="frmMain_Time" />
                <asp:BoundField DataField="frmMain_Hits" HeaderText="点阅" SortExpression="frmMain_Hits" />
                <asp:BoundField DataField="frmMain_Re" HeaderText="回应" SortExpression="frmMain_Re"
                    ItemStyle-HorizontalAlign="Center" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
            SelectCommand="SELECT * FROM [frmMain] ORDER BY [frmMain_Time] DESC"></asp:SqlDataSource>
    </p>
</asp:Content>
