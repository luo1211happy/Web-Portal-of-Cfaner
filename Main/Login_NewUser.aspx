<%@ page title="会员加入" language="VB" masterpagefile="~/MasterPage.master" autoeventwireup="false" inherits="Main_Login_NewUser, App_Web_xnp1f0g5" %>

<%-- 在此处添加内容控件 --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <h4 style="background-color: #0000CC; font-size: x-large; color: #FFFFFF;">
        加入会员</h4>
<script type="text/javascript" src="../js/calendar.js"></script> 
<script type ="text/javascript">
    function DateVisible() {
        var datePicker = document.getElementById('datepicker');
        datePicker.style.display = 'block';
    }
</script>
    <div id="register">
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
            ContinueDestinationPageUrl="~/Member/Mem_ChangePwd.aspx">
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server">
                    <ContentTemplate>
                        <table id="blue1">
                            <tr>
                                <td align="center" colspan="2">
                                    注册新帐户
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server" title="3-20位字符，可由中文、英文、数字及“_”、“-”组成" class="text tip"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                        ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密码:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password" title="6-16位字符，可由英文、数字及标点符号组成"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                        ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">确认密码:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" title="请再次输入您的密码"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword"
                                        ErrorMessage="必须填写“确认密码”。" ToolTip="必须填写“确认密码”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">电子邮件:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Email" runat="server" title="请输入常用的邮箱，将用来找回密码"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                                        ErrorMessage="必须填写“电子邮件”。" ToolTip="必须填写“电子邮件”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">安全提示问题:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question"
                                        ErrorMessage="必须填写“安全提示问题”。" ToolTip="必须填写“安全提示问题”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">安全答案:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer"
                                        ErrorMessage="必须填写“安全答案”。" ToolTip="必须填写“安全答案”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                        ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="“密码”和“确认密码”必须匹配。"
                                        ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color: Red;">
                                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CreateUserWizardStep>
                <asp:WizardStep runat="server" Title="请输入个人详细资料">
                    <table class="style1" id="blue1">
                        <tr>
                            <td align="center" colspan="2">
                                请填写您的个人的详细资料
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                姓名*
                            </td>
                            <td class="style4">
                                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVName" runat="server" ControlToValidate="TxtName"
                                    Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">必要输入栏位</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                昵称*
                            </td>
                            <td class="style4">
                                <asp:TextBox ID="TxtNick" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVNick" runat="server" ControlToValidate="TxtNick"
                                    Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">必要输入栏位</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                性别
                            </td>
                            <td>
                                <asp:RadioButtonList ID="RBLSex" runat="server" RepeatDirection="Horizontal" Width="150px">
                                    <asp:ListItem Value="True">男</asp:ListItem>
                                    <asp:ListItem Value="False">女</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                身份证字号*
                            </td>
                            <td>
                                <asp:TextBox ID="TxtID" runat="server" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVID" runat="server" ControlToValidate="TxtID" Display="Dynamic"
                                    ErrorMessage="RequiredFieldValidator" ForeColor="Red">必要输入栏位</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REVID" runat="server" ControlToValidate="TxtID"
                                    Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300"
                                    ValidationExpression="\d{17}[\d|X]|\d{15}">错误的身份字号</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                生日*
                            </td>
                            <td>
                                <asp:TextBox ID="TxtBirth" runat="server" Width="200px" AutoPostBack ="true" onfocus="SelectDate(this)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVBirth" runat="server" ControlToValidate="TxtBirth"
                                    Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">必要输入栏位</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CPVBirth" runat="server" ControlToValidate="TxtBirth" Display="Dynamic"
                                    ErrorMessage="CompareValidator" Operator="LessThan" Type="Date" ValueToCompare="2000/1/1">日期格式输入错误，或者超过限制范围必须是2000/1/1</asp:CompareValidator>
                                <div id="datepicker" style="display: none; position: absolute;">
                                <asp:Calendar ID="DateCalendar1" runat="server" BackColor="White" 
                                    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                                    ForeColor="#003399" Height="200px" Width="220px">
                                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                                        Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                    <WeekendDayStyle BackColor="#CCCCFF" />
                                </asp:Calendar>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                电话
                            </td>
                            <td>
                                <asp:TextBox ID="TxtPhone" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                手机*
                            </td>
                            <td class="style4">
                                <asp:TextBox ID="TxtMobile" runat="server" Width="200px"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="REVMobile" runat="server" ControlToValidate="TxtMobile"
                                    Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="[0-9]{11}">必须是中国大陆手机号码，或是未依照规定格式输入</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                国家
                            </td>
                            <td>
                                <asp:TextBox ID="TxtCountry" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                城市
                            </td>
                            <td>
                                <asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                详细住址
                            </td>
                            <td>
                                <asp:TextBox ID="TxtDetail" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:CompleteWizardStep runat="server">
                    <ContentTemplate>
                        <table id="blue1">
                            <tr>
                                <td align="center">
                                    完成
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    已成功创建您的帐户。
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue"
                                        Text="继续" ValidationGroup="CreateUserWizard1" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .style2
        {
            width: 43px;
        }
        .style3
        {
            width: 52px;
        }
        .style4
        {
            width: 65px;
        }
        .style5
        {
            width: 99px;
        }
    </style>
</asp:Content>
