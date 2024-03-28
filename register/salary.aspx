<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="salary.aspx.cs" Inherits="register.salary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .grid{
            margin-left:auto;
            margin-right:auto;
        }
        .auto-style1 {
          
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
          
        }
        .auto-style5 {
            width: 30%;
            text-align: right;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            margin-bottom: 2px;
        }
        .auto-style8 {
            margin-top: 4px;
        }
        .auto-style10 {
            font-weight: bold;
        }
        .auto-style11 {
            height: 30px;
            text-align: center;
        }
        body{
            background-color:aliceblue;
        }
        .auto-style12 {
            height: 30px;
            width: 33%;
            text-align:center;
        }
        .auto-style13 {
            font-size: x-large;
            color:navy;
        }
        .table{
            width:100%
        }
        .auto-style14 {
            height: 30px;
            width: 33%;
            text-align: center;
        }
        .auto-style15 {
            text-align: left;
        }
        .bg
        {
            background-color:lightskyblue;
            padding:10dp;
        }
        .auto-style16 {
            font-size: xx-large;
            color: navy;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2 bg" colspan="2">&nbsp;<strong>-------<span class="auto-style16">SALARY</span><span class="auto-style13">-</span>------------&nbsp;</strong></td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td class="auto-style5">
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
                    </strong>:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox1" runat="server" Placeholder="enter id" CssClass="auto-style7" Width="326px" Height="25px"></asp:TextBox>
                </td>
            </tr></table>
        <table class="table">
            <tr>
                <td class="auto-style5">
                    <strong>
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                    </strong>:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox2" runat="server" Placeholder="enter name" CssClass="auto-style8" Height="27px" Width="325px"></asp:TextBox>
                </td>
            </tr>
       <tr>
            <td class="auto-style6"><strong>Position:</strong></td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox3" runat="server" Placeholder="Enter position" CssClass="auto-style7" Width="325px" Height="25px"></asp:TextBox>
            </td>
        </tr>

            <tr>
            <td class="auto-style6"><strong>Salary:</strong></td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox5" runat="server" Placeholder="enter salary" CssClass="auto-style7" Width="326px" Height="25px"></asp:TextBox>
            </td>
        </tr>
    </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">
                    <strong>
                    <asp:Button ID="Button1" runat="server" Text="INSERT" OnClick="Button1_Click" CssClass="auto-style10" Height="33px" Width="103px" BackColor="#6666FF" BorderStyle="None" ForeColor="White" />
                    </strong>
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button2" runat="server" Text="DELETE" OnClick="Button2_Click" CssClass="auto-style10" Height="30px" Width="107px" BackColor="#CC0000" ForeColor="White" BorderStyle="None" />
                </td>
                <td class="auto-style11">
                    <strong>
                    <asp:Button ID="Button3" runat="server" Text="UPDATE" OnClick="Button3_Click" CssClass="auto-style10" Height="30px" Width="101px" BackColor="#009900" BorderStyle="None" ForeColor="White" />
                    </strong>
                </td>
            </tr>
        </table><br />
        <table class="auto-style1">
            <tr>
                
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" Placeholder="enter id to search" runat="server" Width="229px" Height="25px"></asp:TextBox>
                    <strong>
                    <asp:Button ID="Button4" runat="server" Text="SEARCH" OnClick="Button4_Click" CssClass="auto-style10" Height="32px" Width="103px" BackColor="#FF9999" BorderStyle="None" ForeColor="White" />
                    </strong>
                </td>
            </tr>
        </table><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalaryConnectionString %>" SelectCommand="SELECT * FROM [SALARY]"></asp:SqlDataSource>
        <div class="auto-style2">
        <asp:GridView ID="GridView1" runat="server" CssClass="grid" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="100%" Width="70%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
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
        </form>
</body>
</html>
