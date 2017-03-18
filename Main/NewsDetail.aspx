<%@ page title="新闻内容" language="VB" masterpagefile="~/MasterPage2.master" autoeventwireup="false" inherits="Main_NewsDetail, App_Web_xnp1f0g5" %>

<%-- 在此处添加内容控件 --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Main/News.aspx" Text="回上一页" />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="news_ID" 
        DataSourceID="SqlDataSource1" Width="100%">
        <EditItemTemplate>
            news_ID:
            <asp:Label ID="news_IDLabel1" runat="server" Text='<%# Eval("news_ID") %>' />
            <br />
            news_Type:
            <asp:TextBox ID="news_TypeTextBox" runat="server" Text='<%# Bind("news_Type") %>' />
            <br />
            news_Date:
            <asp:TextBox ID="news_DateTextBox" runat="server" Text='<%# Bind("news_Date") %>' />
            <br />
            news_Title:
            <asp:TextBox ID="news_TitleTextBox" runat="server" Text='<%# Bind("news_Title") %>' />
            <br />
            news_Content:
            <asp:TextBox ID="news_ContentTextBox" runat="server" Text='<%# Bind("news_Content") %>' />
            <br />
            news_Image:
            <asp:TextBox ID="news_ImageTextBox" runat="server" Text='<%# Bind("news_Image") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            news_Type:
            <asp:TextBox ID="news_TypeTextBox0" runat="server" Text='<%# Bind("news_Type") %>' />
            <br />
            news_Date:
            <asp:TextBox ID="news_DateTextBox0" runat="server" Text='<%# Bind("news_Date") %>' />
            <br />
            news_Title:
            <asp:TextBox ID="news_TitleTextBox0" runat="server" Text='<%# Bind("news_Title") %>' />
            <br />
            news_Content:
            <asp:TextBox ID="news_ContentTextBox0" runat="server" Text='<%# Bind("news_Content") %>' />
            <br />
            news_Image:
            <asp:TextBox ID="news_ImageTextBox0" runat="server" Text='<%# Bind("news_Image") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="style1" style="width: 100%">
                <tr>
                    <td class="style2" style="border-style: 1; text-align: center; background-color: #00FFFF;
                        border-width: 1px; border-color: #000000">
                        类别：<asp:Label ID="news_TypeLabel" runat="server" Text='<%# Bind("news_Type") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style2" style="border-style: 1; font-weight: bold; text-align: center;
                        border-width: 1px; border-color: #000000">
                        标题：<asp:Label ID="news_TitleLabel" runat="server" Text='<%# Bind("news_Title") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style2" style="border-style: 1; font-weight: bold; text-align: center;
                        border-width: 1px; border-color: #000000">
                        发表时间：<asp:Label ID="news_DateLabel" runat="server" Text='<%# Bind("news_Date","{0:yyyy年MM月dd日}") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="300px" Visible='<%# Eval("news_Image").ToString().Length > 0 %>' ImageUrl='<%# "../Images/news/"&Eval("news_Image") %>'
                            Width="100%" />
                    </td>
                    
                </tr>
                <tr>
                <td>
                        <asp:Label ID="news_ContentLabel" runat="server" Text='<%# Replace(Eval("news_Content"),vbcrlf,"<p>") %>' />
                </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
        SelectCommand="SELECT * FROM [news] WHERE ([news_ID] = @news_ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="news_ID" QueryStringField="news_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

