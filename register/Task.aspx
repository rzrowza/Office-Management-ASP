<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task.aspx.cs" Inherits="register.Task" %>

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
        .auto-style3 {
            background-color:skyblue;
            text-align: center;
        }
        .auto-style4 {
            font-size: xx-large;
            color:navy;
        }
        .auto-style5 {
            width: 33%;
            text-align: right;
        }
        .auto-style6 {
            width: 33%;
        }
        body{
            background-color:aliceblue;
        }
        .auto-style7 {
            font-weight: bold;
        }
        .auto-style8 {
            width: 221px;
        }
        .auto-style9 {
            width: 285px;
            text-align: center;
        }
        .auto-style10 {
            font-weight: bold;
            margin-left: 10px;
        }
        .auto-style11 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table class="auto-style1">
                 <tr>
                     <td class="auto-style3" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;<strong><span class="auto-style4">Tasks</span></strong></td>
                 </tr>
                 <tr>
                     <td class="auto-style5">
                         <strong>
                         <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
                         </strong>
                     </td>
                     <td class="auto-style6">
                         <asp:TextBox ID="TextBox1" Placeholder="enter id" runat="server" Width="324px" Height="26px"></asp:TextBox>
                     </td>
                     <td colspan="2">&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style5">
                         <strong>
                         <asp:Label ID="Label2" runat="server" Text="Team"></asp:Label>
                         </strong>
                     </td>
                     <td class="auto-style6">
                         <asp:TextBox ID="TextBox2" runat="server" Placeholder="select team" Width="324px" Height="24px"></asp:TextBox>
                     </td>
                     <td colspan="2">&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style5">
                         <strong>
                         <asp:Label ID="Label3" runat="server" Text="Task"></asp:Label>
                         </strong>
                     </td>
                     <td class="auto-style6">
                         <asp:TextBox ID="TextBox3" runat="server" Placeholder="select task for employee"  Width="325px" Height="26px"></asp:TextBox>
                     </td>
                     <td colspan="2">&nbsp;</td>
                 </tr>
                 <tr><td></td></tr>
                 <tr>
                     <td class="auto-style5">
                         <strong>
                         <asp:Button ID="Button1" runat="server" Text="INSERT" OnClick="Button1_Click" BackColor="#3366FF" BorderStyle="None" CssClass="auto-style7" ForeColor="White" Height="32px" Width="112px" />
                         </strong>
                     </td>
                     <td class="auto-style9">
                         <strong>
                         <asp:Button ID="Button2" runat="server" Text="DELETE" OnClick="Button2_Click" BackColor="#CC0000" BorderStyle="None" CssClass="auto-style10" ForeColor="White" Height="32px" Width="113px" />
                         </strong>
                     </td>
                     <td>
                         <strong>
                         <asp:Button ID="Button3" runat="server" Text="UPDATE" OnClick="Button3_Click" BackColor="#339933" CssClass="auto-style7" ForeColor="White" Height="32px" Width="114px" BorderStyle="None" />
                         </strong>
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
             </table>
            </div>
        <div>


            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox4" Placeholder="search by employee id" runat="server" Width="218px" Height="19px"></asp:TextBox>
                        <strong>
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="SEARCH" Width="103px" BackColor="#FF9999" BorderStyle="None" CssClass="auto-style7" ForeColor="White" Height="29px" />
                        </strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>


        </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TasksConnectionString %>" SelectCommand="SELECT * FROM [Tasks]"></asp:SqlDataSource>
        <div class="auto-style18">
            <asp:GridView ID="GridView1" runat="server" CssClass="grid" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="192px" Width="693px">
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
    </form>
</body>
</html>
