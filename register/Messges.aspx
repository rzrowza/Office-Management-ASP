<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Messges.aspx.cs" Inherits="register.Messges" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
           
            text-align: center;
        }
        .grid{
            margin-left:auto;
            margin-right:auto;

            
        }
        .bgk{
            margin-top:0px;
            background-color:aliceblue;
        }
        h2{
            color:blue;
        }
       
        .auto-style4 {
            font-size: xx-large;
            font-weight: bold;
        }
        body{
            margin-top:0px;
        }
       .nhk{
           margin-top:0px;
           
           text-align:center;
           width:100%;
           background-color:skyblue;
       }
    </style>
</head>
<body>
    <div class="bgk">
    <form id="form1" runat="server">
        <div  class="nhk">
            <h2 class="auto-style4">Message List</h2>
        </div>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Message]"></asp:SqlDataSource>
            <div class="auto-style2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Email" DataSourceID="SqlDataSource1" Height="397px" Width="1300px" CssClass="grid" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                        <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                        <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
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
    <p class="auto-style2">
        &nbsp;</p>
</div>
</body>
</html>
