<%@ Page Title="Register" Language="vb" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Register.aspx.vb" Inherits="OnshoreRealty.Register" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Register for an Account</h1>
    <div>
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
        <div>
            <div>
                First Name
            </div>
            <div>
                <telerik:radtextbox id="firstName" placeholder="First Name" runat="server" maxlength="25"></telerik:radtextbox>
                <br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="firstName" CssClass="text-danger" ErrorMessage="The first name field is required." />
            </div>
        </div>
        <div>
            <div>
                Last Name
            </div>
            <div>
                <telerik:radtextbox id="lastName" placeholder="Last Name" runat="server" maxlength="25"></telerik:radtextbox>
                <br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="lastName" CssClass="text-danger" ErrorMessage="The last name field is required." />
            </div>
        </div>
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
        <div>
            <div>
                Confirm Password
            </div>
            <div>
                <telerik:radtextbox id="confirmPass" runat="server" textmode="Password" maxlength="20"></telerik:radtextbox>
                <br />
                <asp:CompareValidator runat="server" ControlToCompare="password" ControlToValidate="confirmPass" CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirm password do not match." />
            </div>
        </div>
        <br />
        <telerik:radbutton id="checkbox" runat="server" toggletype="CheckBox" buttontype="LinkButton" autopostback="false" checked="true" backcolor="White">
                <ToggleStates>
                    <telerik:RadButtonToggleState Text="Add to mailing list." PrimaryIconCssClass="rbToggleCheckboxChecked" />
                    <telerik:RadButtonToggleState Text="Do not add to mailing list." PrimaryIconCssClass="rbToggleCheckbox" />
                </ToggleStates>
            </telerik:radbutton>
        <br />
        <br />
        <telerik:radcaptcha id="RadCaptcha1" runat="server" enablerefreshimage="true" errormessage="Must match image.  Please try again."></telerik:radcaptcha>
        <telerik:radbutton id="Register" runat="server" text="Register" onclick="Register_Click"></telerik:radbutton>
    </div>
</asp:Content>
