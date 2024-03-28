<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_page.aspx.cs" UnobtrusiveValidationMode="None"  Inherits="register.Login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
            color: white;
        }
        .auto-style3 {
            text-align:center;
           
            width: 69%;
            padding:20px;
            opacity:100%;
        }
        .auto-style4 {
            width: 115px;
            text-align: right;
        }
        .auto-style5 {
            width: 210px;
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
            width: 115px;
            text-align: right;
            font-size: large;
        }
        .auto-style7 {
            margin-bottom: 6px;
        }
        .auto-style8 {
            margin-bottom: 8px;
        }
        .auto-style9 {
            width: 115px;
            text-align: right;
            font-size: large;
            height: 31px;
        }
        .auto-style10 {
            width: 210px;
            height: 31px;
        }
        .auto-style11 {
            height: 31px;
        }
        p{
            color:white;
        }
        .auto-style12 {
            border-radius:10px;
            font-weight: bold;
        }
        .auto-style13 {
           
            font-size: large;
        }
        .background{
            z-index=-1;
        }
        th,td{
            padding:10dp;
        }
       
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
            width: 295px;
            text-align: center;
        }
        .auto-style16 {
            width: 441px;
            text-align: center;
        }
          .home{
              text-decoration:none;
          }     
        .auto-style17 {
            text-decoration: none;
            font-size: large;
        }
        .auto-style18 {
            text-align: left;
        }
        .background{
            padding:10sp;
        }
        .kk{
            text-align:center;
            width:60%;
            height:45%;
            background-color:#29465B;
            margin-left:auto;
            margin-right:auto;

        }
    </style>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
      
        <div class="auto-style1">
            </div>
        <table class="auto-style14">
            <tr>
                <td class="auto-style15">
                    <strong>
                    <asp:Image ID="Image1" runat="server" Height="53px" ImageUrl="~/images/download_adobe_express (1).png" />
                    <asp:HyperLink ID="HyperLink2" runat="server" BackColor="#202E49" CssClass="auto-style17" EnableTheming="True" ForeColor="White" NavigateUrl="~/FirstPage.aspx">HOME</asp:HyperLink>
                    </strong>
                </td>
                <td class="auto-style16">
            <strong><span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; Login</span></strong> <strong><span class="auto-style2">Page</span></strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br /><br />
        <div class="kk">
            <p></p>
            <table class="auto-style3" style="margin:auto">
            <tr>
                <td class="auto-style9">:<strong><asp:Label ID="Label1" runat="server" ForeColor="White" Text="Email:"></asp:Label>
                    </strong></td>
                <td class="auto-style10">
          
                    <asp:TextBox ID="TextBoxUN" runat="server" Height="20px"  placeholder="enter your email" Width="215px" CssClass="auto-style7" BorderWidth="1px"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="Please enter Email" ForeColor="Red" CssClass="auto-style13"></asp:RequiredFieldValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><p><strong>Password:</strong></p></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxPassword" runat="server" placeholder="enter the password" TextMode="Password" Width="215px" CssClass="auto-style8" BorderWidth="1px" Height="23px"></asp:TextBox>
                </td>
                <td>
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please enter Password" ForeColor="Red" CssClass="auto-style13"></asp:RequiredFieldValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <strong>
                    <asp:Button ID="Buttonlogin" runat="server" OnClick="Buttonlogin_Click" Text="LOGIN" Height="34px" Width="104px" BackColor="#CC0000" CssClass="auto-style12" ForeColor="White" BorderStyle="None" />
                    </strong>
                </td>
                <td class="auto-style18">
                    <strong>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx" CssClass="auto-style13" ForeColor="#6666FF">New User?Register here</asp:HyperLink>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <strong>
                    <asp:Label ID="lblErrorMsz" runat="server" Text="Incorrect user credentials" ForeColor="#FF0066" CssClass="auto-style13"></asp:Label>
                    </strong>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
            <p>

            </p>
            

        </div>
       
           
          
           
    </form>
        </div>
</body>
</html>
