<%@ Page Title="Add New Property" Language="vb" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AddNewProperty.aspx.vb" Inherits="OnshoreRealty.AddNewProperty" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
    <asp:Label ID="addressLabel" runat="server" Text="Address"></asp:Label>
    <telerik:RadTextBox ID="address" runat="server"></telerik:RadTextBox>
    <br />
    <asp:Label ID="priceLabel" runat="server" Text="Price"></asp:Label>
    <telerik:RadNumericTextBox ID="price" runat="server"></telerik:RadNumericTextBox>
    <br />
    <asp:Label ID="acreLabel" runat="server" Text="Acreage"></asp:Label>
    <telerik:RadNumericTextBox ID="acre" runat="server"></telerik:RadNumericTextBox>
    <br />
    <asp:Label ID="bedsLabel" runat="server" Text="Bedrooms"></asp:Label>
    <telerik:RadNumericTextBox ID="beds" runat="server"></telerik:RadNumericTextBox>
    <br />
    <asp:Label ID="bathsLabel" runat="server" Text="Bathrooms"></asp:Label>
    <telerik:RadNumericTextBox ID="baths" runat="server"></telerik:RadNumericTextBox>
    <br />
    <asp:Label ID="sqftLabel" runat="server" Text="Square Footage"></asp:Label>
    <telerik:RadNumericTextBox ID="sqft" runat="server"></telerik:RadNumericTextBox>
    <br />
    <asp:Label ID="descriptionLabel" runat="server" Text="Description"></asp:Label>
    <telerik:RadTextBox ID="description" runat="server"></telerik:RadTextBox>
    <br />
    <asp:Label ID="ageLabel" runat="server" Text="Age (years)"></asp:Label>
    <telerik:RadNumericTextBox ID="age" runat="server"></telerik:RadNumericTextBox>
    <br />
    <telerik:RadButton ID="submit" runat="server" Text="Submit"></telerik:RadButton>
</asp:Content>
