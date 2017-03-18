<%@ page language="VB" autoeventwireup="false" inherits="Member_ForumPost, App_Web_kbhbm1m5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>发表主题</title>
    <script src="../js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="../ckfinder/ckfinder.js"></script>
    <script type="text/javascript">
        //如果是在ASP.NET环境下用的服务器端控件<TextBox>
        CKEDITOR.replace('frmRe_ContentTextBox');
    </script>
    <!--[if IE]><script>
	$(document).ready(function() { 

$("#form_wrap").addClass('hide');

})

</script><![endif]-->
    <style>
        body, div, h1, h2, form, fieldset, input, textarea, footer, p
        {
            margin: 0;
            padding: 0;
            border: 0;
            outline: none;
        }
        
        
        @font-face
        {
            font-family: 'YanoneKaffeesatzRegular';
            src: url('yanonekaffeesatz-regular-webfont.eot');
            src: url('yanonekaffeesatz-regular-webfont.eot?#iefix') format('embedded-opentype'), url('yanonekaffeesatz-regular-webfont.woff') format('woff'), url('yanonekaffeesatz-regular-webfont.ttf') format('truetype'), url('yanonekaffeesatz-regular-webfont.svg#YanoneKaffeesatzRegular') format('svg');
            font-weight: normal;
            font-style: normal;
        }
        
        body
        {
            background: #ccc url('../Images/bg_out.png');
            color: #7c7873;
            font-family: 'YanoneKaffeesatzRegular';
        }
        p
        {
            text-shadow: 0 1px 0 #fff;
            font-size: 24px;
        }
        #wrap
        {
            width: 530px;
            margin: 20px auto 0;
            height: 1000px;
        }
        h1
        {
            margin-bottom: 20px;
            text-align: center;
            font-size: 48px;
            text-shadow: 0 1px 0 #ede8d9;
        }
        
        
        #form_wrap
        {
            overflow: hidden;
            height: 446px;
            position: relative;
            top: 0px;
            -webkit-transition: all 1s ease-in-out .3s;
            -moz-transition: all 1s ease-in-out .3s;
            -o-transition: all 1s ease-in-out .3s;
            transition: all 1s ease-in-out .3s;
        }
        
        #form_wrap:before
        {
            content: "";
            position: absolute;
            bottom: 128px;
            left: 0px;
            background: url('../Images/before.png');
            width: 530px;
            height: 316px;
        }
        
        #form_wrap:after
        {
            content: "";
            position: absolute;
            bottom: 0px;
            left: 0;
            background: url('../Images/after.png');
            width: 530px;
            height: 260px;
        }
        
        #form_wrap.hide:after, #form_wrap.hide:before
        {
            display: none;
        }
        #form_wrap:hover
        {
            height: 120%;
            top: -200px;
        }
        
        
        form
        {
            background: #f7f2ec url('../Images/letter_bg.png');
            position: relative;
            top: 200px;
            overflow: hidden;
            height: 200px;
            width: 400px;
            margin: 0px auto;
            border: 1px solid #fff;
            border-radius: 3px;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            box-shadow: 0px 0px 3px #9d9d9d, inset 0px 0px 27px #fff;
            -moz-box-shadow: 0px 0px 3px #9d9d9d, inset 0px 0px 14px #fff;
            -webkit-box-shadow: 0px 0px 3px #9d9d9d, inset 0px 0px 27px #fff;
            -webkit-transition: all 1s ease-in-out .3s;
            -moz-transition: all 1s ease-in-out .3s;
            -o-transition: all 1s ease-in-out .3s;
            transition: all 1s ease-in-out .3s;
        }
        
        
        #form_wrap:hover form
        {
            height: 830px;
        }
        
        label
        {
            margin: 11px 20px 0 0;
            font-size: 16px;
            color: #b3aba1;
            text-transform: uppercase;
            text-shadow: 0px 1px 0px #fff;
        }
        
        input[type=text], textarea
        {
            font: 14px normal normal uppercase helvetica, arial, serif;
            color: #7c7873;
            background: none;
            width: 380px;
            height: 36px;
            padding: 0px 10px;
            margin: 0 0 10px 0;
            border: 1px solid #f8f5f1;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
            -moz-box-shadow: inset 0px 0px 1px #726959;
            -webkit-box-shadow: inset 0px 0px 1px #b3a895;
            box-shadow: inset 0px 0px 1px #b3a895;
        }
        
        textarea
        {
            height: 80px;
            padding-top: 14px;
        }
        
        textarea:focus, input[type=text]:focus
        {
            background: rgba(255,255,255,.35);
        }
        
        #form_wrap input[type=submit]
        {
            position: relative;
            font-family: 'YanoneKaffeesatzRegular';
            font-size: 24px;
            color: #7c7873;
            text-shadow: 0 1px 0 #fff;
            width: 100%;
            text-align: center;
            opacity: 0;
            background: none;
            cursor: pointer;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;
            -webkit-transition: opacity .6s ease-in-out 0s;
            -moz-transition: opacity .6s ease-in-out 0s;
            -o-transition: opacity .6s ease-in-out 0s;
            transition: opacity .6s ease-in-out 0s;
        }
        
        #form_wrap:hover input[type=submit]
        {
            z-index: 1;
            opacity: 1;
            -webkit-transition: opacity .5s ease-in-out 1.3s;
            -moz-transition: opacity .5s ease-in-out 1.3s;
            -o-transition: opacity .5s ease-in-out 1.3s;
            transition: opacity .5s ease-in-out 1.3s;
        }
        
        #form_wrap:hover input:hover[type=submit]
        {
            color: #435c70;
        }
    </style>
</head>
<body>
    <div id="wrap">
        <div id='form_wrap'>
            <form id="form1" runat="server">
            <h2>
                发表新主题</h2>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="frmMain_ID" DataSourceID="SqlDataSource1"
                DefaultMode="Insert">
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
                    <asp:TextBox ID="frmMain_TimeTextBox" runat="server" Text='<%# Bind("frmMain_Time") %>' />
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
                <InsertItemTemplate>
                    <table class="style1">
                        <tr>
                            <td>
                                姓名
                            </td>
                            <td>
                                <asp:TextBox ID="frmMain_NameTextBox" runat="server" Text='<%# Bind("frmMain_Name") %>' />
                                <asp:RequiredFieldValidator ID="RFVfrmMain_Name" runat="server" ControlToValidate="frmMain_NameTextBox"
                                    Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">必要输入栏位</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                性別
                            </td>
                            <td>
                                <asp:RadioButtonList ID="RBLSex" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("frmMain_Sex") %>'>
                                    <asp:ListItem Selected="True" Value="0">男性</asp:ListItem>
                                    <asp:ListItem Value="1">女性</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                发表时间
                            </td>
                            <td>
                                <asp:TextBox ID="frmMain_TimeTextBox" runat="server" Text='<%# Bind("frmMain_Time") %>' />
                                <asp:RequiredFieldValidator ID="RFVfrmMain_Time" runat="server" ControlToValidate="frmMain_TimeTextBox"
                                    Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">必要输入栏位</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                主题
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="frmMain_SubjectTextBox" runat="server" Text='<%# Bind("frmMain_Subject") %>' />
                                <asp:RequiredFieldValidator ID="RFVfrmMain_Subject" runat="server" ControlToValidate="frmMain_SubjectTextBox"
                                    Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">必要输入栏位</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                内容
                            </td>
                            <td>
                                <CKEditor:CKEditorControl ID="frmMain_ContentTextBox" BasePath="~/ckeditor" runat="server"
                                    Text='<%# Bind("frmMain_Content") %>'></CKEditor:CKEditorControl>
                                <asp:RequiredFieldValidator ID="RFVfrmMain_Content" runat="server" ControlToValidate="frmMain_ContentTextBox"
                                    Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">必要输入栏位</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                电子邮件
                            </td>
                            <td>
                                <asp:TextBox ID="frmMain_EmailTextBox" runat="server" Text='<%# Bind("frmMain_Email") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                &nbsp;
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                                    Text="插入" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                    Text="取消" />
                            </td>
                        </tr>
                    </table>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="frmMain_IPTextBox" runat="server" Text='<%# Bind("frmMain_IP") %>'
                        Visible="False" />
                    <asp:TextBox ID="frmMain_HitsTextBox" runat="server" Text='<%# Bind("frmMain_Hits") %>'
                        Visible="False" />
                    <asp:TextBox ID="frmMain_ReTextBox" runat="server" Text='<%# Bind("frmMain_Re") %>'
                        Visible="False" />
                    <br />
                </InsertItemTemplate>
                <ItemTemplate>
                    frmMain_ID:
                    <asp:Label ID="frmMain_IDLabel" runat="server" Text='<%# Eval("frmMain_ID") %>' />
                    <br />
                    frmMain_Subject:
                    <asp:Label ID="frmMain_SubjectLabel" runat="server" Text='<%# Bind("frmMain_Subject") %>' />
                    <br />
                    frmMain_Content:
                    <asp:Label ID="frmMain_ContentLabel" runat="server" Text='<%# Bind("frmMain_Content") %>' />
                    <br />
                    frmMain_Time:
                    <asp:Label ID="frmMain_TimeLabel" runat="server" Text='<%# Bind("frmMain_Time") %>' />
                    <br />
                    frmMain_Name:
                    <asp:Label ID="frmMain_NameLabel" runat="server" Text='<%# Bind("frmMain_Name") %>' />
                    <br />
                    frmMain_Sex:
                    <asp:Label ID="frmMain_SexLabel" runat="server" Text='<%# Bind("frmMain_Sex") %>' />
                    <br />
                    frmMain_Email:
                    <asp:Label ID="frmMain_EmailLabel" runat="server" Text='<%# Bind("frmMain_Email") %>' />
                    <br />
                    frmMain_IP:
                    <asp:Label ID="frmMain_IPLabel" runat="server" Text='<%# Bind("frmMain_IP") %>' />
                    <br />
                    frmMain_Hits:
                    <asp:Label ID="frmMain_HitsLabel" runat="server" Text='<%# Bind("frmMain_Hits") %>' />
                    <br />
                    frmMain_Re:
                    <asp:Label ID="frmMain_ReLabel" runat="server" Text='<%# Bind("frmMain_Re") %>' />
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
                DeleteCommand="DELETE FROM [frmMain] WHERE [frmMain_ID] = @frmMain_ID" InsertCommand="INSERT INTO [frmMain] ([frmMain_Subject], [frmMain_Content], [frmMain_Time], [frmMain_Name], [frmMain_Sex], [frmMain_Email], [frmMain_IP], [frmMain_Hits], [frmMain_Re]) VALUES (@frmMain_Subject, @frmMain_Content, @frmMain_Time, @frmMain_Name, @frmMain_Sex, @frmMain_Email, @frmMain_IP, @frmMain_Hits, @frmMain_Re)"
                SelectCommand="SELECT * FROM [frmMain]" UpdateCommand="UPDATE [frmMain] SET [frmMain_Subject] = @frmMain_Subject, [frmMain_Content] = @frmMain_Content, [frmMain_Time] = @frmMain_Time, [frmMain_Name] = @frmMain_Name, [frmMain_Sex] = @frmMain_Sex, [frmMain_Email] = @frmMain_Email, [frmMain_IP] = @frmMain_IP, [frmMain_Hits] = @frmMain_Hits, [frmMain_Re] = @frmMain_Re WHERE [frmMain_ID] = @frmMain_ID">
                <DeleteParameters>
                    <asp:Parameter Name="frmMain_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="frmMain_Subject" Type="String" />
                    <asp:Parameter Name="frmMain_Content" Type="String" />
                    <asp:Parameter Name="frmMain_Time" Type="DateTime" />
                    <asp:Parameter Name="frmMain_Name" Type="String" />
                    <asp:Parameter Name="frmMain_Sex" Type="String" />
                    <asp:Parameter Name="frmMain_Email" Type="String" />
                    <asp:Parameter Name="frmMain_IP" Type="String" />
                    <asp:Parameter Name="frmMain_Hits" Type="Int32" />
                    <asp:Parameter Name="frmMain_Re" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="frmMain_Subject" Type="String" />
                    <asp:Parameter Name="frmMain_Content" Type="String" />
                    <asp:Parameter Name="frmMain_Time" Type="DateTime" />
                    <asp:Parameter Name="frmMain_Name" Type="String" />
                    <asp:Parameter Name="frmMain_Sex" Type="String" />
                    <asp:Parameter Name="frmMain_Email" Type="String" />
                    <asp:Parameter Name="frmMain_IP" Type="String" />
                    <asp:Parameter Name="frmMain_Hits" Type="Int32" />
                    <asp:Parameter Name="frmMain_Re" Type="Int32" />
                    <asp:Parameter Name="frmMain_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </form>
        </div>
    </div>
</body>
</html>
