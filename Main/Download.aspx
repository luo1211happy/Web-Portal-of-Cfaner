<%@ page title="下载页面" language="VB" masterpagefile="~/MasterPage.master" autoeventwireup="false" inherits="Main_Download, App_Web_xnp1f0g5" %>

<%-- 在此处添加内容控件 --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DownloadID"
        DataSourceID="SqlDataSource1" AllowPaging="True" CaptionAlign="Top" HorizontalAlign="Center"
        PageSize="50">
        <Columns>
            <asp:TemplateField HeaderText="文档名称">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("DownloadType", "~/Images/files/{0}") %>'
                        Text='<%# Eval("DownloadName") %>'></asp:HyperLink>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/design/new.gif" />
                    <br />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="DownloadType" SortExpression="DownloadType" HeaderText="文档类型">
            </asp:BoundField>
            <asp:TemplateField HeaderText="下载">
                <ItemTemplate>
                    <asp:Button ID="Download" runat="server" CausesValidation="False" CommandName="Select"
                        OnClientClick="return confirm('确定要下载？')" Text="下载" BackColor="#0066FF" ForeColor="White"
                        BorderColor="Black" BorderStyle="Solid" />
                    <br />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="DownloadDate" DataFormatString="{0:d}" SortExpression="DownloadDate"
                HeaderText="上传日期">
                <ItemStyle HorizontalAlign="Right" Width="20%" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
        SelectCommand="SELECT * FROM [download] ORDER BY [DownloadDate] DESC"></asp:SqlDataSource>
    <br />
</asp:Content>
