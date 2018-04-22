<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyWebsite.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="~/Styles/Stylesheet.css" type="text/css"/>
    <link rel="stylesheet2" href="~/Styles/signin.css" type="text/css"/>
    <link rel="stylesheet3" href="~/Styles/bootstrap.min.css" type=text/css/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Header" Text="Please log into the application" runat="server"></asp:Label>
    <br />
   <div class="container" runat="server">
        <asp:Table ID="Table1" Class="form-signin" runat="server"             
            CellSpacing="50" BorderStyle="None" HorizontalAlign="Center">
             <asp:TableRow 
                ID="TableRow1" 
                runat="server" 
                BackColor="Transparent">
                <asp:TableCell >
                    <h2 class="form-signin-heading">Please sign in</h2>
                </asp:TableCell>          
            </asp:TableRow>           	   
            <asp:TableRow 
                ID="TableRow2" 
                runat="server" 
                BackColor="Transparent"
                ForeColor ="Black">            
                <asp:TableCell>
                <asp:TextBox runat="server" id="tbxUsername" class="form-control" placeholder="User name"></asp:TextBox>                
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow 
                ID="TableRow3" 
                runat="server" 
                BackColor="Transparent"
                ForeColor ="Black"
                CellPadding="5"> 
                <asp:TableCell>
                <asp:TextBox runat="server" id="tbxPassword" class="form-control" placeholder="Password"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow 
                ID="TableRow4" 
                runat="server" 
                BackColor="Transparent"
                ForeColor ="Black"
                CellPadding="5">
             <asp:TableCell HorizontalAlign="Right">
                <asp:Button CssClass="btn btn-lg btn-primary btn-block" runat="server" Text="Log in" id="btnLogin" OnClick="Login_Click"></asp:Button>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableFooterRow runat="server" BackColor="Transparent">
                <asp:TableCell         
                    HorizontalAlign="Right"
                    Font-Italic="true">
                    <asp:Label runat="server" Text="" id="lblSuccess"></asp:Label>
                </asp:TableCell>
            </asp:TableFooterRow>
        </asp:Table>

    
            
    </div> <!-- /container -->
   
</asp:Content>
