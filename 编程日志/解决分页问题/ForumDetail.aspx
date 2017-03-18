<%@ page title="论坛内容" language="VB" masterpagefile="~/Admin/Admin.master" autoeventwireup="false" inherits="Main_ForumDetail, App_Web_xajxjmxk" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
    </p>
    <h2 style="background-color: #0000FF">
        主题内容与回应</h2>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="frmMain_ID" DataSourceID="SqlDataSource3"
        Width="100%" AllowPaging="True">
        <EditItemTemplate>
            frmMain_ID:
            <asp:Label ID="frmMain_IDLabel1" runat="server" Text='<%# Eval("frmMain_ID") %>' />
            <br />
            frmMain_Subject:
            <asp:TextBox ID="frmMain_SubjectTextBox" runat="server" Text='<%# Bind("frmMain_Subject") %>' />
            <br />
            frmMain_Content:
            <asp:TextBox ID="frmMain_ContentTextBox" runat="server" Text='<%# Bind("frmMain_Content") %>' />
            <br />
            frmMain_Time:
            <asp:TextBox ID="frmMain_TimeTextBox" runat="server" Text='<%# Bind("frmMain_Time","{0:d}") %>' />
            <br />
            frmMain_Name:
            <asp:TextBox ID="frmMain_NameTextBox" runat="server" Text='<%# Bind("frmMain_Name") %>' />
            <br />
            frmMain_Sex:
            <asp:TextBox ID="frmMain_SexTextBox" runat="server" Text='<%# Bind("frmMain_Sex") %>' />
            <br />
            frmMain_Email:
            <asp:TextBox ID="frmMain_EmailTextBox" runat="server" Text='<%# Bind("frmMain_Email") %>' />
            <br />
            frmMain_IP:
            <asp:TextBox ID="frmMain_IPTextBox" runat="server" Text='<%# Bind("frmMain_IP") %>' />
            <br />
            frmMain_Hits:
            <asp:TextBox ID="frmMain_HitsTextBox" runat="server" Text='<%# Bind("frmMain_Hits") %>' />
            <br />
            frmMain_Re:
            <asp:TextBox ID="frmMain_ReTextBox" runat="server" Text='<%# Bind("frmMain_Re") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <EditRowStyle />
        <EmptyDataRowStyle />
        <FooterStyle />
        <FooterTemplate>
            <asp:Button ID="Button2" runat="server" Text="我要回应" PostBackUrl='<%# “ForumRepost.aspx?frmMain_ID=” & Eval(“frmMain_ID”) & “&frmMain_Subject=” &  HttpUtility.UrlEncode (Eval("frmMain_Subject")) %>'>
            </asp:Button>
        </FooterTemplate>
        <HeaderStyle BorderStyle="Double" />
        <InsertItemTemplate>
            frmMain_Subject:
            <asp:TextBox ID="frmMain_SubjectTextBox0" runat="server" Text='<%# Bind("frmMain_Subject") %>' />
            <br />
            frmMain_Content:
            <asp:TextBox ID="frmMain_ContentTextBox0" runat="server" Text='<%# Bind("frmMain_Content") %>' />
            <br />
            frmMain_Time:
            <asp:TextBox ID="frmMain_TimeTextBox0" runat="server" Text='<%# Bind("frmMain_Time","{0:d}") %>' />
            <br />
            frmMain_Name:
            <asp:TextBox ID="frmMain_NameTextBox0" runat="server" Text='<%# Bind("frmMain_Name") %>' />
            <br />
            frmMain_Sex:
            <asp:TextBox ID="frmMain_SexTextBox0" runat="server" Text='<%# Bind("frmMain_Sex") %>' />
            <br />
            frmMain_Email:
            <asp:TextBox ID="frmMain_EmailTextBox0" runat="server" Text='<%# Bind("frmMain_Email") %>' />
            <br />
            frmMain_IP:
            <asp:TextBox ID="frmMain_IPTextBox0" runat="server" Text='<%# Bind("frmMain_IP") %>' />
            <br />
            frmMain_Hits:
            <asp:TextBox ID="frmMain_HitsTextBox0" runat="server" Text='<%# Bind("frmMain_Hits") %>' />
            <br />
            frmMain_Re:
            <asp:TextBox ID="frmMain_ReTextBox0" runat="server" Text='<%# Bind("frmMain_Re") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <InsertRowStyle />
        <ItemTemplate>
            <table class="style1" width="100%">
                <tr>
                    <td rowspan="2" style="border-style: double">
                        <asp:Image ID="Image1" runat="server" Height="60px" ImageAlign="AbsMiddle" ImageUrl='<%# "~/Images/design/"&iif(Eval("frmMain_Sex")=0,"male.jpg","female.jpg") %>'
                            Width="60px" />
                    </td>
                    <td colspan="2" width="200px" style="border-style: double">
                        主题：<asp:Label ID="frmMain_SubjectLabel" runat="server" Text='<%# Bind("frmMain_Subject") %>' />
                    </td>
                </tr>
                <tr style="border-style: double">
                    <td>
                        姓名：
                        <asp:Label ID="frmMain_NameLabel" runat="server" Text='<%# Bind("frmMain_Name") %>' />
                        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/design/mail.gif"
                            NavigateUrl='<%# "mailto:"&eval("frmMain_Email") %>'>HyperLink</asp:HyperLink>
                    </td>
                    <td style="border-style: double">
                        发布时间： &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label
                            ID="frmMain_TimeLabel" runat="server" Text='<%# Bind("frmMain_Time","{0:d}") %>' />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="border-style: double">
                        <p>
                            内容：</p>
                        <asp:Label ID="frmMain_ContentLabel" runat="server" Text='<%# Replace(Eval("frmMain_Content"),vbcrlf,"<br>") %>' />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
        SelectCommand="SELECT * FROM [frmMain] WHERE ([frmMain_ID] = @frmMain_ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="frmMain_ID" QueryStringField="frmMain_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="frmRe_ID" Width="100%">
        <ItemTemplate>
            <table class="style1" width="100%">
                <tr>
                    <td rowspan="2" style="border-style: double">
                        <asp:Image ID="Image2" runat="server" Height="60px" ImageAlign="AbsMiddle" ImageUrl='<%# "~/Images/design/"&iif(Eval("frmRe_Sex")=0,"male.jpg","female.jpg") %>'
                            Width="60px" />
                    </td>
                    <td colspan="2" style="border-style: double">
                        主题：
                        <asp:Label ID="frmRe_SubjectLabel" runat="server" Text='<%# Eval("frmRe_Subject") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style2" style="border-style: double">
                        姓名：
                        <asp:Label ID="frmRe_NameLabel" runat="server" Text='<%# Eval("frmRe_Name") %>' />
                        <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Images/design/mail.gif"
                            NavigateUrl='<%# "mailto:"&Eval("frmRe_Email") %>'>Mail</asp:HyperLink>
                    </td>
                    <td style="border-style: double">
                        发布时间：
                        <asp:Label ID="frmRe_TimeLabel" runat="server" Text='<%# Eval("frmRe_Time","{0:d}") %>' />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="border-style: double">
                        <p>
                            内容：</p>
                        <asp:Label ID="frmRe_ContentLabel" runat="server" Text='<%# Replace(Eval("frmRe_Content"),vbcrlf,"<br>") %>' />
                    </td>
                </tr>
            </table>
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
    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="1" ShowBoxThreshold="1"
        AlwaysShow="True" FirstPageText="首页" LastPageText="末页" NextPageText="下一页" PrevPageText="上一页"
        OnPageChanging="AspNetPager1_PageChanging" >
    </webdiyer:AspNetPager>
</asp:Content>
