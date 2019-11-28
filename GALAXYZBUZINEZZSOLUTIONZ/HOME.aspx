BTFGGY<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="GALAXYZBUZINEZZSOLUTIONZ.HOME" %>

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
</head>
<body>
    <form id="REGform1" runat="server">
         <div>
            <asp:Label ID="lblWelcome" runat="server" Text="Welcome"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
        </div>
    </form>
</body>
</html>
