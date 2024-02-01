<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Restaurant_Management_System.WebForm1" %>

<!DOCTYPE html>

<%-- 
    Name: Kanak Shakya
    Roll no: 13
    Title: Login page for user validation using Session.
 --%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login page</title>
    <link href="styles/login.css" rel="stylesheet"/>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <section class="left">
            <header class="header">
                <img src="<%= ResolveUrl("~/assets/images/the-whispering-fork-high-resolution-logo-transparent.png") %>" alt="logo" class="logo" />
            </header>
            <form id="Form1" runat="server">
                <div class="form-container">
                    <h2 class="heading">Welcome Back</h2> <!-- here -->
                    <p class="sub-heading">Sign in with your email address and password.</p>
                    <label for="email" class="input-labels">Email Address:</label> 
                    <asp:TextBox ID="txtBoxEmail" runat="server" CssClass="w-100 input-fields text-inputs"></asp:TextBox><br />
                    <label for="password" class="input-labels">Password:</label> 
                    <asp:TextBox ID="txtBoxPassword" runat="server" TextMode="Password" CssClass="w-100 input-fields text-inputs"></asp:TextBox><br />
                    
                    <asp:CheckBox ID="CheckBox1" runat="server" /> Remember me<br />
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="w-100 input-fields user-form-btn login-btn"/><p class="text-center">Don't have an account? <a href="#">Sign Up</a></p>
                </div>
            </form>
        </section>
        <section class="right" >
            <div class="bg-img-container"></div>
        </section>
        
    </div>
</body>
</html>
