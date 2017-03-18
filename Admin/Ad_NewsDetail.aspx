<%@ page language="VB" autoeventwireup="false" inherits="Admin_Ad_NewsDetail, App_Web_jgc2ijq0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>新闻详细内容</title>
    <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
    <script type="text/javascript">
        //如果是在ASP.NET环境下用的服务器端控件<TextBox>
        CKEDITOR.replace('news_ContentTextBox');
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>
            最新消息的修改与新增</h3>
        <p>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="news_ID" DataSourceID="SqlDataSource1"
                DefaultMode="Edit" Width="580px">
                <EditItemTemplate>
                    <table style="border: 1px solid #808080; width: 580px">
                        <tr>
                            <td>
                                类别 :&nbsp;
                                <asp:TextBox ID="news_TypeTextBox" runat="server" Text='<%# Bind("news_Type") %>'
                                    Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                标题 :
                                <asp:TextBox ID="news_TitleTextBox" runat="server" Text='<%# Bind("news_Title") %>'
                                    Width="450px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" valign="top">
                                <asp:Image ID="Image1" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px"
                                    Height="300px" ImageUrl='<%# "../Images/news/" & Eval("news_Image") %>' Width="100%" />
                                <br />
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <br />
                                <asp:Button ID="Button1" runat="server" OnClick="BtnEditImage" SkinID="BtnBak" Text="确定" />
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                发布时间:
                                <asp:TextBox ID="news_DateTextBox" runat="server" Text='<%# Bind("news_Date") %>'
                                    Width="100%" />
                                <br />
                                內容:
                                <br />
                                <asp:TextBox ID="news_ContentTextBox"  CssClass="ckeditor" runat="server" Rows="10" Text='<%# Bind("news_Content") %>'
                                    TextMode="MultiLine" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:Label ID="news_IDLabel1" runat="server" Text='<%# Eval("news_ID") %>' Visible="False" />
                    <br />
                    <asp:TextBox ID="news_ImageTextBox" runat="server" Text='<%# Bind("news_Image") %>'
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
                                类别 :&nbsp;<asp:TextBox ID="news_TypeTextBox" runat="server" Text='<%# Bind("news_Type") %>'
                                    Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                标题 :
                                <asp:TextBox ID="news_TitleTextBox" runat="server" Text='<%# Bind("news_Title") %>'
                                    Width="450px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" valign="top">
                                <asp:Image ID="Image2" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px"
                                    Height="300px" ImageUrl='<%# "../images/news/" & Eval("news_Image") %>' Width="100%" />
                                <br />
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                                <br />
                                <asp:Button ID="Button2" runat="server" OnClick="BtnSaveImage" SkinID="BtnGray" Text="确定" />
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                发布时间:
                                <asp:TextBox ID="news_DateTextBox" runat="server" Text='<%# Bind("news_Date") %>'
                                    Width="100%" />
                                <br />
                                內容:
                                <br />
                                <asp:TextBox ID="news_ContentTextBox" CssClass="ckeditor" runat="server" Rows="12" Text='<%# Bind("news_Content") %>'
                                    TextMode="MultiLine" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:TextBox ID="news_ImageTextBox" runat="server" Text='<%# Bind("news_Image") %>'
                        Visible="False"></asp:TextBox>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                        Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                        CommandName="Cancel" PostBackUrl="~/Admin/admin.aspx" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    news_ID:
                    <asp:Label ID="news_IDLabel" runat="server" Text='<%# Eval("news_ID") %>' />
                    <br />
                    news_Type:
                    <asp:Label ID="news_TypeLabel" runat="server" Text='<%# Bind("news_Type") %>' />
                    <br />
                    news_Date:
                    <asp:Label ID="news_DateLabel" runat="server" Text='<%# Bind("news_Date") %>' />
                    <br />
                    news_Title:
                    <asp:Label ID="news_TitleLabel" runat="server" Text='<%# Bind("news_Title") %>' />
                    <br />
                    news_Content:
                    <asp:Label ID="news_ContentLabel" runat="server" Text='<%# Bind("news_Content") %>' />
                    <br />
                    news_Image:
                    <asp:Label ID="news_ImageLabel" runat="server" Text='<%# Bind("news_Image") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                        Text="编辑" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                        Text="删除" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                        Text="新增" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
                DeleteCommand="DELETE FROM [news] WHERE [news_ID] = @news_ID" InsertCommand="INSERT INTO [news] ([news_Type], [news_Date], [news_Title], [news_Content], [news_Image]) VALUES (@news_Type, @news_Date, @news_Title, @news_Content, @news_Image)"
                SelectCommand="SELECT * FROM [news] WHERE ([news_ID] = @news_ID)" UpdateCommand="UPDATE [news] SET [news_Type] = @news_Type, [news_Date] = @news_Date, [news_Title] = @news_Title, [news_Content] = @news_Content, [news_Image] = @news_Image WHERE [news_ID] = @news_ID">
                <SelectParameters>
                    <asp:QueryStringParameter Name="news_ID" QueryStringField="news_ID" Type="Int32" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:Parameter Name="news_ID" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="news_Type" Type="String" />
                    <asp:Parameter Name="news_Date" Type="DateTime" />
                    <asp:Parameter Name="news_Title" Type="String" />
                    <asp:Parameter Name="news_Content" Type="String" />
                    <asp:Parameter Name="news_Image" Type="String" />
                    <asp:Parameter Name="news_ID" Type="Int32" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="news_Type" Type="String" />
                    <asp:Parameter Name="news_Date" Type="DateTime" />
                    <asp:Parameter Name="news_Title" Type="String" />
                    <asp:Parameter Name="news_Content" Type="String" />
                    <asp:Parameter Name="news_Image" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
    </div>
    </form>
</body>
</html>
