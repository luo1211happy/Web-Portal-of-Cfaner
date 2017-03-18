<%@ page title="忘记密码" language="VB" masterpagefile="~/MasterPage.master" autoeventwireup="false" inherits="Main_Login_GetPwd, App_Web_xnp1f0g5" %>

<%-- 在此处添加内容控件 --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <h4 style="background-color: #0000CC; font-size: x-large; color: #FFFFFF;">
        忘记密码</h4>
    <div id="getpwd">
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" Width="348px">
            <UserNameTemplate>
                <table cellpadding="1" cellspacing="0" style="border-collapse: collapse;" width="348">
                    <tr>
                        <td>
                            <table cellpadding="0" style="width: 348px;">
                                <tr>
                                    <td align="center" colspan="2">
                                        是否忘记了您的密码?
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        要接收您的密码，请输入您的用户名。
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                            ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。" ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Text="提交" ValidationGroup="PasswordRecovery1" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </UserNameTemplate>
        </asp:PasswordRecovery>
    </div>
</asp:Content>
