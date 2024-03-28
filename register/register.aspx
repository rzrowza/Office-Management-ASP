<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" UnobtrusiveValidationMode="None" Inherits="register.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 270px;
            margin-right: 1px;
        }
        .auto-style2 {
            height: 23px;
            width: 500px;
        }
        .auto-style3 {
            height: 23px;
            width: 244px;
            text-align: right;
            font-size: large;
        }
        .auto-style4 {
            width: 244px;
        }
        .auto-style5 {
            width: 244px;
            text-align: right;
            font-size: large;
        }
        .auto-style6 {
            height: 23px;
            width: 168px;
        }
        .auto-style8 {
            font-size: large;
            padding:7dp;
        }
        .auto-style9 {
            width: 168px;
        }
        .auto-style11 {
            width: 244px;
            height: 30px;
        }
        .auto-style12 {
            width: 168px;
            height: 30px;
        }
        .auto-style13 {
            height: 30px;
            width: 500px;
        }
        .auto-style14 {
            width: 82px;
            font-weight: bold;
            color:white;
            border-style:none;
            border-radius:5px;
            background-color:firebrick;
            height: 33px;
            font-size: medium;
        }
        p{
            color:white
        }
       
        .container{
           
            width:1366px;
            height:768px;
            background-image:url("images/neww.jpg");
            background-position:center;
            background-repeat:no-repeat;
            margin:auto;
            padding:0;
       
            background-size:cover;
          
        }
        .auto-style15 {
            font-weight: bold;
            border-radius:5px;
            font-size: medium;
        }
        .auto-style16 {
            width: 500px;
        }
      

        .auto-style17 {
            text-align: left;
            color:white;
        }
        .auto-style18 {
            font-size: x-large;
        }
        .auto-style19 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <caption>
                    <h2 class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style18">&nbsp; </span><span class="auto-style19">&nbsp;Registration page</span></h2></caption>
                <tr>
                    <td class="auto-style3"><p><strong>User name:</strong></p></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxUN" runat="server"  Placeholder="select a username" CssClass="auto-style8" Width="209px" Height="24px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User name required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><p><strong>Email:</strong></p></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBoxEmail" runat="server"  Placeholder="enter a email" CssClass="auto-style8" Width="210px" Height="24px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                        <br />
                        <strong>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter the valid email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><p><strong>Password</strong></p></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Placeholder="enter a password" CssClass="auto-style8" Width="209px" Height="24px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><p><strong>Confirm Passsword:</strong></p></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBoxRPass" runat="server" Placeholder="confirm password"  TextMode="Password"  CssClass="auto-style8" Width="209px" Height="24px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxRPass" ErrorMessage="Confirm password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>&nbsp;<br />
                        <strong>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" ErrorMessage="Both password must be same" ForeColor="Red"></asp:CompareValidator>
                        </strong>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style3"><p><strong>Phone:</strong></p></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxPhone" runat="server"  Placeholder="enter phone number" CssClass="auto-style8" Width="209px" Height="24px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxPhone" ErrorMessage="Phone number required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                
                
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12">
                        <strong>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="82px" BackColor="#33CC33" CssClass="auto-style15" BorderStyle="None" ForeColor="White" Height="33px" />
                        </strong>
                    </td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style9">
                        <strong>
                        <input id="Reset2" class="auto-style14" type="reset"   value="Reset" /></strong></td>
                    <td class="auto-style16">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
        </div>
</body>
</html>
