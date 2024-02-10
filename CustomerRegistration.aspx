<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="Restaurant_Management_System.CustomerRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
     <link href="styles/customerRegistration.css" rel="stylesheet"/>
</head>
<body>
    <div class="container">
        <section class="left">
            <header class="header">
                <img src="<%= ResolveUrl("~/assets/images/the-whispering-fork-high-resolution-logo-transparent.png") %>" alt="logo" class="logo" />
            </header>
            <form id="form1" runat="server">
                <div class="form-container">
                    <h2 class="heading">Welcome to <span class="heading-title">the whispering fork</span></h2>
                    <label for="firstName" class="input-labels">FirstName: </label>
                    <asp:TextBox ID="TxtBoxFirstName" runat="server" CssClass="w-100 input-fields text-inputs"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_FirstName" runat="server" ErrorMessage="First name is required" ControlToValidate="TxtBoxFirstName" CssClass="error-txt"></asp:RequiredFieldValidator><br />
            
                    <label for="lastName" class="input-labels">LastName: </label>
                    <asp:TextBox ID="TxtBoxLastName" runat="server" CssClass="w-100 input-fields text-inputs"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_LastName" runat="server" ErrorMessage="Last name is required" ControlToValidate="TxtBoxLastName" CssClass="error-txt"></asp:RequiredFieldValidator><br />
            
                    <label for="dob" class="input-labels">Date of Birth:<br />
                    </label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            
                    <label for="dob" class="input-labels">&nbsp;</label><asp:TextBox ID="TxtBoxDOB" runat="server" CssClass="w-100 input-fields text-inputs"></asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" />
                    <asp:Calendar ID="Calendar1" runat="server" ToolTip="Enter your date" CssClass="w-100 input-fields text-inputs calendar" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar><br />
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>

                    <label for="address" class="input-labels">Address: </label>
                    <asp:TextBox ID="TxtBoxAddress" runat="server" CssClass="w-100 input-fields text-inputs"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_Address" runat="server" ErrorMessage="Address is required" ControlToValidate="TxtBoxAddress" CssClass="error-txt"></asp:RequiredFieldValidator><br />

                    <label for="email" class="input-labels">Email: </label>
                    <asp:TextBox ID="TxtBoxEmail" runat="server" CssClass="w-100 input-fields text-inputs"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="REV_Email" runat="server" ErrorMessage="Invalid email" ControlToValidate="TxtBoxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="error-txt"></asp:RegularExpressionValidator><br />

                    <label for="gender" class="input-labels">Gender: </label>
                    <div class="gender">
                        <asp:RadioButton ID="RadioButtonMale" runat="server" GroupName="Gender" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Male" />
                        <asp:RadioButton ID="RadioButtonFemale" runat="server" GroupName="Gender" Text="Female" />
                    </div>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                    <br />

                    <asp:ValidationSummary ID="ValidationSummaryCustomerRegistration" runat="server" CssClass="error-txt"/>
                    <br />
                    <asp:Button ID="BtnRegister" runat="server" Text="Register" OnClick="Button1_Click"  CssClass="w-100 input-fields user-form-btn customer-reg-btn"/>
                </div>
            </form>
        </section>
        <section class="right">
            <div class="bg-img-container"></div>
        </section>  
    </div>
</body>
</html>
