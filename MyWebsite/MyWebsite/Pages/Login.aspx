<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyWebsite.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Styles/Stylesheet.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Header" Text="Please log into the application" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Wrapper" runat="server" Text="User name"></asp:Label> 
    <asp:textbox runat="server" name="tbxUsername"></asp:textbox>
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label> 
    <asp:textbox runat="server" name="tbxPassword"></asp:textbox>
    <br />
    <br />
    <asp:button runat="server" text="Cancel" />
    <asp:button runat="server" text="Login" name="btnLogin" id="Button" />
</asp:Content>
