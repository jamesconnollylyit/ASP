<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TestSite.Pages.Login" %>

<!DOCTYPE html>

<html>
 <head>
   
    <title>Signin</title>

    <!-- Bootstrap core CSS -->
    <link href="../styles/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../styles/signin.css" rel="stylesheet">
  </head>

  <body class="text-center">
      <form id="form1" class="form-signin" runat="server">
     
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
      <label for="inputEmail" class="sr-only">Email address</label>&nbsp;
      <asp:TextBox ID="tbxEmailAddress" runat="server" class="form-control" OnTextChanged="tbxEmailAddress_TextChanged">Email address</asp:TextBox>

      <label for="inputPassword" class="form-control">Password</label>&nbsp;
          
           <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" Text="Button" Width="92px" CssClass="btn btn-lg btn-primary btn-block"/>
          <br />
          <br />
          <br />
          
          <br />
          <br />
         
      
      <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
      </form>
  </body>
</html>
