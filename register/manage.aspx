<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manage.aspx.cs" Inherits="register.manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {          
            margin-left:auto;
           margin-right:auto;
        }
        .auto-style3 {
            margin-left: 39px;
            font-weight: bold;
            font-size: medium;
            border-radius:10px;
        }
        .auto-style4 {
            margin-left: 37px;
            font-weight: bold;
            font-size: medium;
             border-radius:10px;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 430px;
            font-size: large;
        }
        .auto-style7 {
            text-align: center;
        }
        body{
            background-color:azure;
        }
        .auto-style9 {
            font-weight: bold;
            margin-left: 20px;
            font-size: medium;
            border-radius:10px;
        }
       
        .auto-style10 {
            width: 430px;
            text-align: right;
            font-size: large;
            color:navy;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        .auto-style12 {
            margin-left: 35px;
            font-weight: bold;
            border-radius:10px;
            font-size: medium;
        }
        .auto-style13 {
            width: 430px;
            text-align: right;
            font-size: large;
            height: 26px;
            color:navy;
        }
        .auto-style14 {
            height: 26px;
        }
        .auto-style15 {
            text-align: left;
        }
        .auto-style16 {
            height: 26px;
            text-align: left;
        }
        .auto-style17 {
            background-color:skyblue;
            color:navy;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style7">
        <DIV>


            <table class="auto-style5">
                <caption class="auto-style17"><strong>Manage Employee</strong></caption>
                <tr>
                    <td class="auto-style13"><strong>Id:</strong></td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextID" Placeholder="enter id" runat="server" Width="326px" Height="25px"></asp:TextBox>
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>UserName:</strong></td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextUN" Placeholder="enter a username" runat="server" Width="326px" Height="25px"></asp:TextBox>
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>Email:</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBoxEMAIL" Placeholder="enter a valid email" runat="server" Width="326px" CssClass="auto-style11" Height="25px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>Password:</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBoxPASS" runat="server" Placeholder="enter a valid Password" TextMode="Password"  Width="326px" Height="25px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>Phone number:</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBoxPhone" runat="server" Placeholder="enter phone no"   Width="326px" Height="25px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>Joining Date:</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBoxJoin" runat="server" Placeholder="enter joining date"   Width="326px" Height="25px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style10"><strong>Retired Date:</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBoxRetired" runat="server" Placeholder="enter Retired date "   Width="326px" Height="25px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>


        </DIV>
        <div>
            <strong>
            <asp:Button ID="Button2" runat="server" Text="INSERT" CssClass="auto-style12" Width="104px" OnClick="Button2_Click" BackColor="#6699FF" ForeColor="White" BorderStyle="None" Height="31px" />
            <asp:Button ID="Button1" runat="server" Text="UPDATE" CssClass="auto-style12" Width="103px" OnClick="Button1_Click" BackColor="#009999" BorderStyle="None" ForeColor="White" Height="31px" />  <asp:Button ID="Button3" runat="server" Text="DELETE" CssClass="auto-style3" Width="103px" OnClick="Button3_Click" BackColor="Red" BorderStyle="None" ForeColor="White" Height="31px" />
            
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>
            <asp:Button ID="Button5" runat="server" Text="HOME" Width="104px" BackColor="Silver" CssClass="auto-style9" OnClick="Button5_Click" BorderStyle="None" Height="30px" />
            
            </strong>
            
        </div>
       <br />
        <div>
            <strong>
            <asp:Button ID="Button4" runat="server" CssClass="auto-style4" Text="SEARCH" Width="105px" OnClick="Button4_Click" BackColor="#FF9999" BorderStyle="None" ForeColor="White" Height="30px" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="246px" Height="25px"></asp:TextBox>
        </div><br />
        <div class="auto-style7">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [UserData]"></asp:SqlDataSource>
            <div>
            &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataSourceID="SqlDataSource1" Width="1218px" Height="367px" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True" DataKeyNames="Email">
                    <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" ReadOnly="True" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Joine" HeaderText="Joine" SortExpression="Joine" />
                    <asp:BoundField DataField="Retired" HeaderText="Retired" SortExpression="Retired" />
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
            <div class="auto-style7">
            <br />
            </div>
        </div>
        </div>
    </form>
</body>
</html>
