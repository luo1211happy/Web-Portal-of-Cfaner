<%@ page language="VB" autoeventwireup="false" inherits="Admin_Ad_IntroDetail, App_Web_jgc2ijq0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>新闻详细内容</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>
            家园成员介绍的修改与新增</h3>
        <p>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="member_ID" DataSourceID="SqlDataSource1"
                DefaultMode="Edit" Width="300px">
                <EditItemTemplate>
                    <table style="border: 1px solid #808080; width: 300px">
                        <tr>
                            <td>
                                成员名称 :
                                <asp:TextBox ID="member_NameTextBox" runat="server" Text='<%# Bind("member_Name") %>'
                                    Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                成员职务 :
                                <asp:TextBox ID="member_JobTextBox" runat="server" Text='<%# Bind("member_Job") %>'
                                    Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                成员班级 :
                                <asp:TextBox ID="member_ClassTextBox" runat="server" Text='<%# Bind("member_Class") %>'
                                    Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                成员寝室 :
                                <asp:TextBox ID="member_DormTextBox" runat="server" Text='<%# Bind("member_Dorm") %>'
                                    Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                成员电话 :
                                <asp:TextBox ID="member_TelTextBox" runat="server" Text='<%# Bind("member_Tel") %>'
                                    Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" valign="top">
                                <asp:Image ID="Image1" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px"
                                    Height="295px" ImageUrl='<%# "../Introduction/Images/members/" & Eval("member_Image") %>'
                                    Width="250" />
                                <br />
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <br />
                                <asp:Button ID="Button1" runat="server" OnClick="BtnEditImage" SkinID="BtnBak" Text="确定" />
                            </td>
                        </tr>
                    </table>
                    <asp:Label ID="member_IDLabel1" runat="server" Text='<%# Eval("member_ID") %>' Visible="False" />
                    <br />
                    <asp:TextBox ID="member_ImageTextBox" runat="server" Text='<%# Bind("member_Image") %>'
                        Visible="False"></asp:TextBox>
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                        Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                        CommandName="Cancel" PostBackUrl="~/Admin/admin.aspx" Text="取消" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table style="padding: 5px; border: 1px solid #808080; width: 300px">
                        <tr>
                            <td>
                                成员名称 :
                                <asp:TextBox ID="member_NameTextBox" runat="server" Text='<%# Bind("member_Name") %>'
                                    Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                成员职务 :
                                <asp:TextBox ID="member_JobTextBox" runat="server" Text='<%# Bind("member_Job") %>'
                                    Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                成员班级 :
                                <asp:TextBox ID="member_ClassTextBox" runat="server" Text='<%# Bind("member_Class") %>'
                                    Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                成员寝室 :
                                <asp:TextBox ID="member_DormTextBox" runat="server" Text='<%# Bind("member_Dorm") %>'
                                    Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                成员电话 :
                                <asp:TextBox ID="member_TelTextBox" runat="server" Text='<%# Bind("member_Tel") %>'
                                    Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" valign="top">
                                <asp:Image ID="Image2" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px"
                                    Height="295px" ImageUrl='<%# "../Introduction/images/members/" & Eval("member_Image") %>'
                                    Width="250px" />
                                <br />
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                                <br />
                                <asp:Button ID="Button2" runat="server" OnClick="BtnSaveImage" SkinID="BtnGray" Text="确定" />
                            </td>
                        </tr>
                    </table>
                    <asp:TextBox ID="member_ImageTextBox" runat="server" Text='<%# Bind("member_Image") %>'
                        Visible="False"></asp:TextBox>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                        Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                        CommandName="Cancel" PostBackUrl="~/Admin/admin.aspx" Text="取消" />
                </InsertItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
                DeleteCommand="DELETE FROM [members] WHERE [member_ID] = @member_ID" InsertCommand="INSERT INTO [members] ([member_Name], [member_Job], [member_Class], [member_Dorm], [member_Tel], [member_Image]) VALUES (@member_Name, @member_Job, @member_Class, @member_Dorm, @member_Tel, @member_Image)"
                SelectCommand="SELECT * FROM [members] WHERE ([member_ID] = @member_ID)" UpdateCommand="UPDATE [members] SET [member_Name] = @member_Name, [member_Job] = @member_Job, [member_Class] = @member_Class, [member_Dorm] = @member_Dorm, [member_Tel] = @member_Tel, [member_Image] = @member_Image WHERE [member_ID] = @member_ID">
                <SelectParameters>
                    <asp:QueryStringParameter Name="member_ID" QueryStringField="member_ID" Type="Int32" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:Parameter Name="member_ID" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="member_Name" Type="String" />
                    <asp:Parameter Name="member_Job" Type="String" />
                    <asp:Parameter Name="member_Class" Type="String" />
                    <asp:Parameter Name="member_Dorm" Type="String" />
                    <asp:Parameter Name="member_Tel" Type="String" />
                    <asp:Parameter Name="member_Image" Type="String" />
                    <asp:Parameter Name="member_ID" Type="Int32" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="member_Name" Type="String" />
                    <asp:Parameter Name="member_Job" Type="String" />
                    <asp:Parameter Name="member_Class" Type="String" />
                    <asp:Parameter Name="member_Dorm" Type="String" />
                    <asp:Parameter Name="member_Tel" Type="String" />
                    <asp:Parameter Name="member_Image" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
    </div>
    </form>
</body>
</html>
