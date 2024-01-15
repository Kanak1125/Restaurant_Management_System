<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Restaurant_Management_System.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Login</h2>
            Email: 
            <asp:TextBox ID="txtBoxEmail" runat="server"></asp:TextBox><br />
            Password:
            <asp:TextBox ID="txtBoxPassword" runat="server" TextMode="Password"></asp:TextBox><br />
        
            <asp:CheckBox ID="CheckBox1" runat="server" /> Remember me
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Width="53px" />
            <p>Not a user? <a href="#">Register</a></p>
         </div>
    </form>
</body>
</html>
