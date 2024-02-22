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
            <asp:TextBox ID="TxtBoxName" runat="server" Width="382px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtBoxName"></asp:RequiredFieldValidator>
            <br />
            Contact Number:
            <asp:TextBox ID="TxtBoxContact" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtBoxContact"></asp:RequiredFieldValidator>
            <br />
            Address:
            <asp:TextBox ID="TxtBoxAddress" runat="server" Width="356px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtBoxAddress"></asp:RequiredFieldValidator>
            <asp:Panel ID="Panel1" runat="server">
                Search:
                <asp:TextBox ID="txtBoxSearch" runat="server" Width="739px" OnTextChanged="TxtBoxSearch_TextChanged"></asp:TextBox>
                <asp:Panel ID="itemsPanel" runat="server"></asp:Panel>
                <asp:GridView ID="GridViewItems" runat="server" Height="225px" Width="823px">
                    <Columns>
                        <%--<asp:HyperLinkField Text="Item Id" />
                        <asp:BoundField HeaderText="Item Name" />
                        <asp:BoundField HeaderText="Rate" />
                        <asp:BoundField HeaderText="Available" />
                        <asp:ButtonField Text="Add" />--%>
                    </Columns>
                </asp:GridView>
                <asp:Panel ID="Panel2" runat="server" Height="103px">
                    <span class="auto-style1">Order Summary<br /> Items:<br />
                    <br />
                    </span>
                    <asp:GridView ID="GridViewOrders" runat="server" OnSelectedIndexChanged="GridViewOrders_SelectedIndexChanged">
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
            <br />
            Grand Total <asp:TextBox ID="TxtBoxGrandTotal" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtBoxGrandTotal"></asp:RequiredFieldValidator>
&nbsp;Discount
            <asp:TextBox ID="TxtBoxDiscount" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtBoxDiscount"></asp:RequiredFieldValidator>
        </p>
        <p>
            Total:
            <asp:TextBox ID="TxtBoxTotal" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" />
            <asp:Button ID="ButtonConfirm" runat="server" Text="Confirm" />
        </p>
        <p>
            <asp:SqlDataSource runat="server"></asp:SqlDataSource>
            &nbsp;</p>
    </form>
</body>
</html>
