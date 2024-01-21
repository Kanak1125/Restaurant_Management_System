<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Restaurant_Management_System.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard8</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome, 
            <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
             to the dashboard...</h1>
            <asp:Menu runat="server" OnMenuItemClick="Unnamed1_MenuItemClick" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem Text="Order Management" Value="Order Management">
                        <asp:MenuItem Text="New Order" Value="New Order"></asp:MenuItem>
                        <asp:MenuItem Text="List Order" Value="List Order"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Customer Management" Value="Customer Management">
                        <asp:MenuItem NavigateUrl="~/CustomerRegistration.aspx" Text="New Customer" Value="New Customer"></asp:MenuItem>
                        <asp:MenuItem Text="List Customer" Value="List Customer"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Item Management" Value="Item Management">
                        <asp:MenuItem Text="New Item" Value="New Item"></asp:MenuItem>
                        <asp:MenuItem Text="List Item" Value="List Item"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
    </form>
</body>
</html>
