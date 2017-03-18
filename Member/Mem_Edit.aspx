<%@ page title="会员资料变更" language="VB" masterpagefile="~/MasterPage.master" autoeventwireup="false" inherits="Member_Mem_Edit, App_Web_kbhbm1m5" %>

<%-- 在此处添加内容控件 --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <h4 style="background-color: #0000CC; font-size: x-large; color: #FFFFFF;">
        修改会员资料</h4>
    <script type="text/javascript" src="../js/calendar.js"></script>
    <div id="register">
        <table style="width: 348px;" id="blue1">
            <tr>
                <td align="center" colspan="2">
                    请填写您的个人的详细资料
                </td>
            </tr>
            <tr>
                <td class="style2">
                    账号
                </td>
                <td class="style3" id="LblName">
                    <asp:Label ID="LblName" runat="server" Text="LblName"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    电子邮件
                </td>
                <td class="style3">
                    <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ControlToValidate="TxtEmail"
                        Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">必要输入栏位</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    姓名*
                </td>
                <td class="style3">
                    <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVName" runat="server" ControlToValidate="TxtName"
                        Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">必要输入栏位</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    昵称*
                </td>
                <td class="style3">
                    <asp:TextBox ID="TxtNick" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVNick" runat="server" ControlToValidate="TxtNick"
                        Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">必要输入栏位</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    性别
                </td>
                <td class="style3">
                    <asp:RadioButtonList ID="RBLSex" runat="server" RepeatDirection="Horizontal" Width="150px">
                        <asp:ListItem Value="True">男</asp:ListItem>
                        <asp:ListItem Value="False">女</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    身份证字号*
                </td>
                <td class="style3">
                    <asp:TextBox ID="TxtID" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVID" runat="server" ControlToValidate="TxtID" Display="Dynamic"
                        ErrorMessage="RequiredFieldValidator" ForeColor="Red">必要输入栏位</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ValidationExpression="\d{17}[\d|X]|\d{15}"
                        ForeColor="#FF3300" ControlToValidate="TxtID" ErrorMessage="RegularExpressionValidator"
                        Display="Dynamic" ID="REVID">错误的身份字号</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    生日*
                </td>
                <td class="style3">
                    <asp:TextBox ID="TxtBirth" runat="server" Width="200px" onclick="SelectDate(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVBirth" runat="server" ControlToValidate="TxtBirth"
                        Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">必要输入栏位</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CPVBirth" runat="server" ControlToValidate="TxtBirth" Display="Dynamic"
                        ErrorMessage="CompareValidator" Operator="LessThan" Type="Date" ValueToCompare="2000/1/1">日期格式输入错误，或者超过限制范围必须是2000/1/1以前</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    电话
                </td>
                <td class="style3">
                    <asp:TextBox ID="TxtPhone" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    手机号码
                </td>
                <td class="style3">
                    <asp:TextBox ID="TxtMobile" runat="server" Width="200px"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ValidationExpression="[0-9]{11}" ForeColor="Red"
                        ControlToValidate="TxtMobile" ErrorMessage="RegularExpressionValidator" Display="Dynamic"
                        ID="REVMobile">必须是中国大陆手机号码，或是未依照规定格式输入</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    国家
                </td>
                <td class="style3">
                    <asp:TextBox ID="TxtCountry" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    城市
                </td>
                <td class="style3">
                    <asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    详细住址
                </td>
                <td class="style3">
                    <asp:TextBox ID="TxtDetail" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;
                </td>
                <td align="right" class="style3">
                    <asp:Button ID="BtnEnter" runat="server" Text="确定" />
                    <asp:Label ID="LblCompleted" runat="server" Text="LblCompleted"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .style2
        {
            width: 116px;
        }
        .style3
        {
            width: 224px;
        }
    </style>
</asp:Content>
