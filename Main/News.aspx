<%@ page title="新闻页面" language="VB" masterpagefile="~/MasterPage.master" autoeventwireup="false" inherits="Main_News, App_Web_xnp1f0g5" %>

<%-- 在此处添加内容控件 --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <h4 style="background-color: #0000CC; font-size: x-large; color: #FFFFFF;">
        最新消息</h4>
    <p>
        选择新闻类别：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
            DataTextField="news_Type" DataValueField="news_Type">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
            SelectCommand="SELECT DISTINCT [news_Type] FROM [news]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            DataKeyNames="news_ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="news_Type" HeaderText="新闻类别" SortExpression="news_Type">
                </asp:BoundField>
                <asp:BoundField DataField="news_Date" HeaderText="发布日期" SortExpression="news_Date"
                    DataFormatString="{0:d}" HtmlEncode="False"></asp:BoundField>
                <asp:HyperLinkField DataNavigateUrlFields="news_ID" DataNavigateUrlFormatString="NewsDetail.aspx?news_ID={0}"
                    DataTextField="news_Title" HeaderText="标题">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:HyperLinkField>
            </Columns>
            <PagerSettings FirstPageText="第一页" LastPageText="最后一页" Mode="NextPreviousFirstLast"
                NextPageText="下一页" PreviousPageText="上一页" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
            SelectCommand="SELECT [news_ID], [news_Type], [news_Date], [news_Title] FROM [news] ORDER BY [news_Date] DESC">
        </asp:SqlDataSource>
    </p>
</asp:Content>
