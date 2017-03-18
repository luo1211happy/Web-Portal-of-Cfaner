<%@ page language="VB" autoeventwireup="false" inherits="Login, App_Web_xnp1f0g5" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>用户登录</title>
    <link href="images/User_Login.css" type="text/css" rel="stylesheet">
</head>
<body id="userlogin_body">
    <form id="form1" runat="server">
    <div>
    </div>
    <div id="user_login">
        <asp:Login ID="Login1" runat="server">
            <LayoutTemplate>
                <dl>
                    <dd id="user_top">
                        <ul>
                            <li class="user_top_l"></li>
                            <li class="user_top_c"></li>
                            <li class="user_top_r"></li>
                        </ul>
                        <dd id="user_main">
                            <ul>
                                <li class="user_main_l"></li>
                                <li class="user_main_c">
                                    <div class="user_main_box">
                                        <ul>
                                            <li class="user_main_text">
                                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名:</asp:Label></li>
                                            <li class="user_main_input">
                                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                                                    ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="必须填写“用户名”。"
                                                    ToolTip="必须填写“用户名”。" ValidationGroup="Login1">*</asp:RequiredFieldValidator></li></ul>
                                        <ul>
                                            <li class="user_main_text">
                                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密   码: </asp:Label></li>
                                            <li class="user_main_input">
                                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                                    ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" ValidationGroup="Login1">*</asp:RequiredFieldValidator></li></ul>
                                        <ul>
                                            <li>
                                                <asp:CheckBox ID="RememberMe" runat="server" Text="下次记住我。" /></li></ul>
                                        <ul>
                                            <li>
                                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal></li></ul>
                                        <ul>
                                            <li class="user_main_text">Cookie： </li>
                                            <li class="user_main_input">
                                                <select id="DropExpiration" name="DropExpiration">
                                                    <option value="None" selected>不保存</option>
                                                    <option value="Day">保存一天</option>
                                                    <option value="Month">保存一月</option>
                                                    <option value="Year">保存一年</option>
                                                </select>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="user_main_r">
                                    <asp:ImageButton ID="LoginImageButton" runat="server" AlternateText="Submit the login form."
                                        CommandName="Login" ImageUrl="~/Main/images/user_botton.gif" ValidationGroup="Login1" /></li></ul>
                            <dd id="user_bottom">
                                <ul>
                                    <li class="user_bottom_l"></li>
                                    <li class="user_bottom_c"><span style="margin-top: 40px"></span></li>
                                    <li class="user_bottom_r"></li>
                                </ul>
                            </dd>
                </dl>
            </LayoutTemplate>
        </asp:Login>
    </div>
    <div>
    </div>
    </form>
</body>
</html>
