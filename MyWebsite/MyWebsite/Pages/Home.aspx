<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MyWebsite.Pages.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblHeader" runat="server" Text="Please select an option"></asp:Label>
    <br />
    <asp:Button ID="btnRunReport1" runat="server" Text="Log report" />
    <asp:Button ID="btnRunUserReport" runat="server" Text="User report" />

    <asp:Button ID="btnLogout" runat="server" Text="Log out" OnClick="btnLogout_Click" />

    <br />
</asp:Content>
