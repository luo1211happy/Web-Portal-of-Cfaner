<%@ page language="VB" autoeventwireup="false" inherits="Admin_Ad_Download, App_Web_jgc2ijq0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>下载详细内容</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button3" runat="server" Text="返回管理页面" />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="DownloadID" DataSourceID="SqlDataSource1"
            DefaultMode="Edit">
            <EditItemTemplate>
                &nbsp;<asp:Label ID="DownloadIDLabel1" runat="server" Text='<%# Eval("DownloadID") %>'
                    Visible="False" />
                <br />
                上传文档名称:
                <asp:TextBox ID="DownloadNameTextBox" runat="server" Text='<%# Bind("DownloadName") %>' />
                <br />
                上传文档：
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:TextBox ID="DownloadTypeTextBox" runat="server" Text='<%# Bind("DownloadType") %>'
                    Visible="false" />
                <br />
                上传时间:
                <asp:TextBox ID="DownloadDateTextBox" runat="server" Text='<%# Bind("DownloadDate") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="更新" onclick="UpdateButton_Click" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                    CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                上传文档名称:
                <asp:TextBox ID="DownloadNameTextBox" runat="server" Text='<%# Bind("DownloadName") %>' />
                <br />
                上传文档：
                <asp:FileUpload ID="FileUpload2" runat="server" />
                <asp:TextBox ID="DownloadTypeTextBox" runat="server" Text='<%# Bind("DownloadType") %>'
                    Visible="False" />
                <br />
                上传时间:
                <asp:TextBox ID="DownloadDateTextBox" runat="server" Text='<%# Bind("DownloadDate") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="插入" onclick="InsertButton_Click" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                    CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                DownloadID:
                <asp:Label ID="DownloadIDLabel" runat="server" Text='<%# Eval("DownloadID") %>' />
                <br />
                DownloadName:
                <asp:Label ID="DownloadNameLabel" runat="server" Text='<%# Bind("DownloadName") %>' />
                <br />
                DownloadType:
                <asp:Label ID="DownloadTypeLabel" runat="server" Text='<%# Bind("DownloadType") %>' />
                <br />
                DownloadDate:
                <asp:Label ID="DownloadDateLabel" runat="server" Text='<%# Bind("DownloadDate") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                    Text="编辑" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="删除" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                    Text="新建" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
            DeleteCommand="DELETE FROM [download] WHERE [DownloadID] = @DownloadID" InsertCommand="INSERT INTO [download] ([DownloadName], [DownloadType], [DownloadDate]) VALUES (@DownloadName, @DownloadType, @DownloadDate)"
            SelectCommand="SELECT * FROM [download] WHERE ([DownloadID] = @DownloadID)" UpdateCommand="UPDATE [download] SET [DownloadName] = @DownloadName, [DownloadType] = @DownloadType, [DownloadDate] = @DownloadDate WHERE [DownloadID] = @DownloadID">
            <DeleteParameters>
                <asp:Parameter Name="DownloadID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="DownloadName" Type="String" />
                <asp:Parameter Name="DownloadType" Type="String" />
                <asp:Parameter Name="DownloadDate" Type="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="DownloadID" QueryStringField="DownloadID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="DownloadName" Type="String" />
                <asp:Parameter Name="DownloadType" Type="String" />
                <asp:Parameter Name="DownloadDate" Type="DateTime" />
                <asp:Parameter Name="DownloadID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
