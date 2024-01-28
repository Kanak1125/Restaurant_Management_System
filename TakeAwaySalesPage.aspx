<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TakeAwaySalesPage.aspx.cs" Inherits="Restaurant_Management_System.TakeAwaySalesPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Customer information:<br />
            Name:
            <asp:TextBox ID="TextBox1" runat="server" Width="382px"></asp:TextBox>
&nbsp;Contact Number:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            Address:
            <asp:TextBox ID="TextBox3" runat="server" Width="356px"></asp:TextBox>
            <asp:Panel ID="Panel1" runat="server">
                Search:
                <asp:TextBox ID="txtBoxSearch" runat="server" Width="739px" OnTextChanged="txtBoxSearch_TextChanged"></asp:TextBox>
                <asp:Panel ID="itemsPanel" runat="server"></asp:Panel>
                <asp:GridView ID="GridViewItems" runat="server" Height="225px" Width="823px">
                    <Columns>
                        <asp:HyperLinkField Text="Item Id" />
                        <asp:BoundField HeaderText="Item Name" />
                        <asp:BoundField HeaderText="Rate" />
                        <asp:BoundField HeaderText="Available" />
                        <asp:ButtonField Text="Add" />
                    </Columns>
                </asp:GridView>
                <asp:Panel ID="Panel2" runat="server" Height="103px">
                    <span class="auto-style1">Order Summary<br /> Items:<br />
                    <br />
                    </span>
                    <asp:GridView ID="GridViewOrders" runat="server">
                        <Columns>
                            <asp:BoundField HeaderText="Item Name" />
                            <asp:BoundField HeaderText="Rate" />
                            <asp:BoundField HeaderText="Quantity" />
                            <asp:BoundField HeaderText="Total" />
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
            </asp:Panel>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            Grand Total TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;Discount
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </p>
        <p>
            Total:
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Cancel" />
            <asp:Button ID="Button2" runat="server" Text="Confirm" />
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
