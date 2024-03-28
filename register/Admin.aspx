<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs"  UnobtrusiveValidationMode="None" Inherits="register.Admin" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            font-size: x-large;
            color:white;
            text-align: left;
            height: 45px;
            margin-top: 23px;
        }
        .auto-style3 {
            width: 75%;
            padding:20px;
        }
        .auto-style4 {
            width: 187px;
            text-align: right;
            color: white;
            font-size: large;
        }
        .auto-style5 {
            width: 310px;
        }
        body{
            background-color:black;
        }
        .container{

            width:1366px;
            height:768px;
           background-image:url("images/bgk.jpg");
            background-position:center;
            background-repeat:no-repeat;
            margin:auto;
            padding:0;
            position:relative;
            background-size:cover;

        }
         th,td{
            padding:15px;
        }
        .auto-style6 {
            width: 187px;
            text-align: right;
            color: white;
            height: 93px;
        }
        .auto-style7 {
            width: 310px;
            height: 93px;
        }
        .auto-style8 {
            height: 93px;
            width: 452px;
        }
        .auto-style10 {
            font-size: large;
        }
        .auto-style11 {
            width: 452px;
        }
        .auto-style12 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style13 {
            margin-bottom: 10px;
        }
        .auto-style14 {
            margin-bottom: 8px;
        }
        .logo{
            text-align:center;
            margin-left:200px;
            float:left;
        }
        .auto-style15 {
            font-size: xx-large;
            color:white;
        }
        .auto-style16 {
            width: 420px;
        }
        .auto-style17 {
            width: 338px;
            text-decoration:none;
        
        }
        .auto-style18 {
            width: 375px;
        }
        .auto-style19 {
            text-align: center;
            margin-left: 200px;
            float: left;
            width: 144px;
        }
    </style>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
      
        <table>
            <tr><td class="auto-style18"> <div class="auto-style19"><strong>
                    <asp:Image ID="Image1" runat="server" Height="53px" ImageUrl="~/images/download_adobe_express (1).png" />
                    <asp:HyperLink ID="HyperLink2" runat="server" BackColor="#151D41" CssClass="auto-style17" EnableTheming="True" ForeColor="White" NavigateUrl="~/FirstPage.aspx">HOME</asp:HyperLink>
                    </strong></div></td><td class="auto-style16"><div>
                <p class="auto-style2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style15">Admin</span></strong><span class="auto-style15"> </span><strong><span class="auto-style15">Login</span></strong></p>
            </div></td></tr>
        </table>
           
        <table class="auto-style3" style="margin:auto;border:3px solid white">
            <tr>
                <td class="auto-style4"><strong>Email:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxUN" runat="server" Placeholder="Email" Height="24px" Width="217px" CssClass="auto-style13"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="Please enter Email" ForeColor="Red" CssClass="auto-style10"></asp:RequiredFieldValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Password:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxPassword" runat="server" Width="216px" CssClass="auto-style14" Height="24px"  Placeholder="Password" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please enter Password" ForeColor="Red" CssClass="auto-style10"></asp:RequiredFieldValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <strong>
                    <asp:Button ID="Buttonlogin" runat="server" OnClick="Buttonlogin_Click" Text="LOGIN" BackColor="#CC0000" CssClass="auto-style12" Width="94px" ForeColor="White" Height="36px" BorderStyle="None" />
                    </strong>
                </td>
                <td class="auto-style11">
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7">
                    <strong>
                    <asp:Label ID="lblErrorMsz" runat="server" Text="Incorrect user credentials" ForeColor="Red" CssClass="auto-style10"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style8"></td>
            </tr>
        </table>
    </form>
       </div>
</body>
</html>