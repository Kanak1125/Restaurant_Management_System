<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="Restaurant_Management_System.CustomerRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label for="firstName">FirstName: </label>
            <asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBoxFirstName"></asp:RequiredFieldValidator>
            <label for="lastName">LastName: </label>
            <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBoxLastName"></asp:RequiredFieldValidator>
            <label for="dob">Date of Birth: </label>
            <asp:Calendar ID="TextBoxCalendar" runat="server"></asp:Calendar><br />
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>

            <label for="address">Address: </label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>

            <label for="email">Email: </label>
            <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email" ControlToValidate="TextBoxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

            <label for="gender">Gender: </label>
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Male" />
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" Text="Female" />
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
            <br />

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Register" />
        </div>
    </form>
</body>
</html>
