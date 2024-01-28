<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="Restaurant_Management_System.CustomerRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label for="firstName">FirstName: </label>
            <asp:TextBox ID="TxtBoxFirstName" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RFV_FirstName" runat="server" ErrorMessage="First name is required" ControlToValidate="TxtBoxFirstName"></asp:RequiredFieldValidator><br />
            
            <label for="lastName">LastName: </label>
            <asp:TextBox ID="TxtBoxLastName" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RFV_LastName" runat="server" ErrorMessage="Last name is required" ControlToValidate="TxtBoxLastName"></asp:RequiredFieldValidator><br />
            
            <label for="dob">Date of Birth: </label>
            <%--<asp:TextBox ID="TxtBoxDOB" runat="server"></asp:TextBox>--%>
            <asp:Calendar ID="Calendar1" runat="server" ToolTip="Enter your date"></asp:Calendar><br />
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>

            <label for="address">Address: </label>
            <asp:TextBox ID="TxtBoxAddress" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RFV_Address" runat="server" ErrorMessage="Address is required" ControlToValidate="TxtBoxAddress"></asp:RequiredFieldValidator><br />

            <label for="email">Email: </label>
            <asp:TextBox ID="TxtBoxEmail" runat="server"></asp:TextBox><br />
            <asp:RegularExpressionValidator ID="REV_Email" runat="server" ErrorMessage="Invalid email" ControlToValidate="TxtBoxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />

            <label for="gender">Gender: </label>
            <asp:RadioButton ID="RadioButtonMale" runat="server" GroupName="Gender" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Male" />
            <asp:RadioButton ID="RadioButtonFemale" runat="server" GroupName="Gender" Text="Female" />
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
            <br />

            <asp:ValidationSummary ID="ValidationSummaryCustomerRegistration" runat="server" />
            <br />
            <asp:Button ID="BtnRegister" runat="server" Text="Register" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
