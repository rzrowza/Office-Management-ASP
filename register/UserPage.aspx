<%@ Page Language="C#" AutoEventWireup="true" EnableSessionState="True" CodeBehind="UserPage.aspx.cs" Inherits="register.UserPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/style.css" rel="stylesheet">
    <style type="text/css">
        body{
            background-color:aliceblue;
        }
        .auto-style1 {
            height: 252px;
            align-content:center;
        }
        .auto-style3 {
            font-size:45px;
            font-family:'Script MT';
           
        }
        .auto-style4 {
            width: 776px;
            height: 211px;
        }
        .auto-style5 {
            margin-left:auto;
            margin-right:auto;
            margin-bottom: 45px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style8 {
            height: 22px;
        }
        .auto-style20 {
            margin-left: 198px;
            margin-top: 0px;
        }
        .auto-style22 {
            font-size: large;
            font-style:italic;
        }
        .auto-style24 {
            width: 347px;
        }
        th,td{
            padding:10px;
        }
        .auto-style25 {
           
       
            width: 100%;
        }
        .auto-style29 {
            width: 309px;
        }
        .auto-style30 {
            width: 214px;
        }
        .auto-style34 {
            font-size: medium;
        }
        .auto-style2{
            border-radius:8px;
        }
        .auto-style35 {
            width: 151px;
        }
        .auto-style36 {
            height: 22px;
            width: 73px;
        }
        .auto-style37 {
            font-size: medium;
            width: 73px;
        }
        .auto-style38 {
            height: 22px;
            width: 21px;
        }
        .auto-style39 {
            font-size: medium;
            width: 21px;
        }
        .auto-style40 {
            height: 22px;
            width: 128px;
        }
        .auto-style41 {
            font-size: medium;
            width: 128px;
        }
        .auto-style42 {
            font-size: x-large;
            font-style: italic;
        }
        .auto-style43 {
            font-weight: bold;
        }
        .auto-style44 {
            margin-left: 67px;
        }
        .table{
            position:fixed;
            background-color:deepskyblue;
            width:100%;
           
        }
        .auto-style45 {
            width: 368px;
        }
    </style>
</head>
<body><div class="bd">
   
    <form id="form1" runat="server">
        <div class="auto-style1">
         
            <table class="table">
                <tr>
                    <td class="auto-style35">&nbsp;</td>
                    <td class="auto-style30">
            <strong><em>
            <asp:Label ID="Label_welcome" runat="server" CssClass="auto-style3" ForeColor="#9900CC" Text="Welcome "></asp:Label>
            </em>
            </strong>
                    </td>
                    <td class="auto-style29"><strong>
            <asp:Label ID="Label10" runat="server" Text="Label" CssClass="auto-style42" ForeColor="#0066FF"></asp:Label>
            </strong>
                    </td>
                    <td><strong>
                         <asp:Button ID="Button_logout" runat="server" CssClass="auto-style2" OnClick="Button_logout_Click" Text="Logout" BackColor="#CC0000" ForeColor="White" style="font-weight: bold" Width="115px" BorderStyle="None" Height="29px" /></strong></td>
                </tr>
            </table><br /><br /><br /></br></br>
            <table class="auto-style25">
                <tr>
                    <td class="auto-style40">
                        &nbsp;</td>
                    <td class="auto-style38">
                        &nbsp;</td>
                    <td class="auto-style36">
                        <strong>
                        <em>
                        <asp:Label ID="Label11" runat="server" Text="Label" CssClass="auto-style34">ID:</asp:Label>
                        </em>
                        </strong>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label2" runat="server" Text="Label" CssClass="auto-style22"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style37"><strong><em>Username</em>:</strong></td>
                    <td class="auto-style24">
                        <asp:Label ID="Label3" runat="server" Text="Label" CssClass="auto-style22"></asp:Label>
                    </td>
                </tr>
         
                <tr>
                    <td class="auto-style40">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style36"><strong><span class="auto-style34"><em>Email</em></span>:</strong><span class="auto-style22"><strong>&nbsp;</strong></span></td>
                    <td class="auto-style8">
                        <asp:Label ID="Label4" runat="server" Text="Label" CssClass="auto-style22"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style37"><strong><em>Pasword:</em></strong></td>
                    <td>
                        <asp:Label ID="Label5" TextMOde="Password" runat="server" Text="Label" CssClass="auto-style22"></asp:Label>
                    </td>
                </tr>
                <tr> <td>&nbsp;</td>
                     <td>&nbsp;</td>
                    <td><strong><em>Phone number:</em></strong></td>
                    <td><em><strong><asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label></strong></em></td>
                   
                </tr>

                

            </table>
           

        </div> <br /><br /><br />
        <div>
            <table>
                <tr>
                    <td class="auto-style45"> <asp:TextBox ID="TextBox1"  runat="server" Width="186px" Placeholder="enter team name to search"  Height="22px" CssClass="auto-style44" ForeColor="Blue"></asp:TextBox>
            <strong>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" BackColor="#CC66FF"  ForeColor="#990099" BorderStyle="None" Height="30px" Width="94px" CssClass="auto-style43" />
            </strong></td>
                    <td> <asp:TextBox ID="TextBox2"  runat="server" Width="186px" Placeholder="enter id to search" CssClass="auto-style20" Height="22px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server"  Text="Search" BackColor="#6600FF" ForeColor="#66FFFF" BorderStyle="None" Height="30px" Width="79px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
           

        </div>
          
        <div class="auto-style4" >

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TasksConnectionString %>" SelectCommand="SELECT * FROM [Tasks]"></asp:SqlDataSource>
            <br />
            <div class="auto-style6">
                <asp:GridView ID="GridView2"  runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style5" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1312px" Height="257px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team" />
                        <asp:BoundField DataField="Task" HeaderText="Task" SortExpression="Task" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>

       </div>
    </form>
    </div>
</body>
</html>
