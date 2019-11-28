<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REGISTRATION.aspx.cs" Inherits="GALAXYZBUZINEZZSOLUTIONZ.REGISTRATION" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <header class="header">
      <h3 class="header-logo">Simple Store</h3>
      
      <nav class="header-nav">
        <ul>
          <li><a href="#0">Home</a></li>
          <li><a href="#0">Products</a></li>
          <li><a href="#0">Contact</a></li>
        </ul>
      </nav>
    </header>
    <style type="text/css">
        .auto-style1 {
            width: 255px;
        }
        .auto-style2 {
            width: 255px;
            height: 128px;
        }
        .auto-style3 {
            height: 128px;
        }
        .auto-style4 {
            height: 73px;

        }
         
    </style>
</head>
<body>
    <form id="REGform1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">First Name:</td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Last Name:</td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                 <tr>
                <td class="style2">
                    Email:</td>
                <td class="style4">
                    <asp:TextBox ID="txtEmail" runat="server" Width="275px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtEmail" Display="Dynamic" 
                        ErrorMessage="Email is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                    <td class="auto-style1">Password:</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords do not match"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style4">
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblRegisteredUsers" runat="server" Text="Registered Users: "></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
