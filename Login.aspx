<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Restaurant_Management_System.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login page</title>
    <link href="styles/login.css" rel="stylesheet"/>
    <style>
        /*.body {
            border: 1px solid red;
            min-height: 100vh;
        }
        .container {
            display: flex;
            height: 100%;
        }
        .left {
            flex-basis: 50%;
            height: 100%;
        }
        .right {
            flex-basis: 50%;
        }
        .bg-img-container {
            background: url('https://images.unsplash.com/photo-1634141613544-001d33883517?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') no-repeat;
            background-size: cover;
            height: 100%;
        }*/
    </style>
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
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="w-100 input-fields login-btn"/><p class="text-center">Don't have an account? <a href="#">Sign Up</a></p>
                </div>
            </form>
        </section>
        <section class="right" >
            <div class="bg-img-container"></div>
        </section>
        
    </div>
</body>
</html>
