<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginBS.aspx.cs" Inherits="MyWebsite.Pages.loginBS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body class="text-center" runat="server">
    <form class="form-signin">
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
      <label for="inputEmail" class="sr-only">Email address</label>
        <asp:TextBox ID="inputEmail" class="form-control" placeholder="Email address" required autofocus></asp:TextBox>
      <label for="inputPassword" class="sr-only">Password</label>
      <asp:TextBox type="password" id="inputPassword" class="form-control" placeholder="Password" required>
      
      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
    </form>
  </body>
</html>
