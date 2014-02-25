<%@ Page Title="Login" Language="vb" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.vb" Inherits="OnshoreRealty.Login" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Sign into Existing Account</h1>
    <div>
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
        <div>
            <div>
                E-mail
            </div>
            <div>
                <telerik:radtextbox id="email" placeholder="E-mail" runat="server" validationexpression="^[\w\.\-]+@[a-zA-Z0-9\-]+(\.[a-zA-Z0-9\-]{1,})*(\.[a-zA-Z]{2,3}){1,2}$" maxlength="100"></telerik:radtextbox>
                <br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="email" CssClass="text-danger" ErrorMessage="The E-mail field is required." />
            </div>
        </div>
        <div>
            <div>
                Password
            </div>
            <div>
                <telerik:radtextbox id="password" runat="server" textmode="Password" maxlength="20"></telerik:radtextbox>
                <br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="password" CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <br />
        <br />
        <telerik:radbutton id="Login" runat="server" text="Login" onclick="Login_Click"></telerik:radbutton>
    </div>
    <div>
        <telerik:RadButton ID="NewUser" runat="server" Text="New User" OnClick="NewUser_Click"></telerik:RadButton>
    </div>
</asp:Content>

