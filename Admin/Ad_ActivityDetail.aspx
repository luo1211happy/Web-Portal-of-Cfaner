<%@ page language="VB" autoeventwireup="false" inherits="Admin_Ad_ActivityDetail, App_Web_jgc2ijq0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>家园活动介绍详细内容</title>
    <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
    <script type="text/javascript">
        //如果是在ASP.NET环境下用的服务器端控件<TextBox>
        CKEDITOR.replace('activity_ContentTextBox');
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>
            家园活动介绍修改与新增</h3>
        <p>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="activity_ID" DataSourceID="SqlDataSource1"
                DefaultMode="Edit" Width="365px">
                <EditItemTemplate>
                    <table style="border: 1px solid #808080; width: 365px">
                        <tr>
                            <td>
                                活动名称 :
                                <asp:TextBox ID="activity_NameTextBox" runat="server" Text='<%# Bind("activity_Name") %>'
                                    Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" valign="top">
                                <asp:Image ID="Image1" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px"
                                    Height="238" ImageUrl='<%# "../Introduction/Images/activities/" & Eval("activity_Image") %>'
                                    Width="355" />
                                <br />
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <br />
                                <asp:Button ID="Button1" runat="server" OnClick="BtnEditImage" SkinID="BtnBak" Text="确定" />
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                內容:
                                <br />
                                <asp:TextBox ID="activity_ContentTextBox" CssClass="ckeditor" runat="server" Rows="10"
                                    Text='<%# Bind("activity_Content") %>' TextMode="MultiLine" Width="365px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:Label ID="activity_IDLabel1" runat="server" Text='<%# Eval("activity_ID") %>'
                        Visible="False" />
                    <br />
                    <asp:TextBox ID="activity_ImageTextBox" runat="server" Text='<%# Bind("activity_Image") %>'
                        Visible="False"></asp:TextBox>
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                        Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                        CommandName="Cancel" PostBackUrl="~/Admin/admin.aspx" Text="取消" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table style="padding: 5px; border: 1px solid #808080; width: 580px">
                        <tr>
                            <td>
                                活动名称 :
                                <asp:TextBox ID="activity_NameTextBox" runat="server" Text='<%# Bind("activity_Name") %>'
                                    Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" valign="top">
                                <asp:Image ID="Image2" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px"
                                    Height="238px" ImageUrl='<%# "../Introduction/images/activities/" & Eval("activity_Image") %>'
                                    Width="355px" />
                                <br />
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                                <br />
                                <asp:Button ID="Button2" runat="server" OnClick="BtnSaveImage" SkinID="BtnGray" Text="确定" />
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                內容:
                                <br />
                                <asp:TextBox ID="activity_ContentTextBox" CssClass="ckeditor" runat="server" Rows="10" Text='<%# Bind("activity_Content") %>'
                                    TextMode="MultiLine" Width="365px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:TextBox ID="activity_ImageTextBox" runat="server" Text='<%# Bind("activity_Image") %>'
                        Visible="False"></asp:TextBox>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                        Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                        CommandName="Cancel" PostBackUrl="~/Admin/admin.aspx" Text="取消" />
                </InsertItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
                DeleteCommand="DELETE FROM [activities] WHERE [activity_ID] = @activity_ID" InsertCommand="INSERT INTO [activities] ([activity_Name], [activity_Content], [activity_Image]) VALUES (@activity_Name, @activity_Content, @activity_Image)"
                SelectCommand="SELECT * FROM [activities] ORDER BY [activity_ID] DESC" UpdateCommand="UPDATE [activities] SET [activity_Name] = @activity_Name, [activity_Content] = @activity_Content, [activity_Image] = @activity_Image WHERE [activity_ID] = @activity_ID">
                <SelectParameters>
                    <asp:QueryStringParameter Name="activity_ID" QueryStringField="activity_ID" Type="Int32" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:Parameter Name="activity_ID" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="activity_Name" Type="String" />
                    <asp:Parameter Name="activity_Content" Type="String" />
                    <asp:Parameter Name="activity_Image" Type="String" />
                    <asp:Parameter Name="activity_ID" Type="Int32" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="activity_Name" Type="String" />
                    <asp:Parameter Name="activity_Content" Type="String" />
                    <asp:Parameter Name="activity_Image" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
    </div>
    </form>
</body>
</html>
