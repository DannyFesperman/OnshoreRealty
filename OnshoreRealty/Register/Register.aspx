<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Register.aspx.vb" Inherits="OnshoreRealty.Register" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Register for an Account</h1>
        <div>
            <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
            <div>
                <div>
                    First Name
                </div>
                <div>
                    <telerik:RadTextBox ID="firstName" placeholder="First Name" runat="server" MaxLength="25"></telerik:RadTextBox><br />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="firstName" CssClass="text-danger" ErrorMessage="The first name field is required." />
                </div>
            </div>
            <div>
                <div>
                    Last Name
                </div>
                <div>
                    <telerik:RadTextBox ID="lastName" placeholder="Last Name" runat="server" MaxLength="25"></telerik:RadTextBox><br />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="lastName" CssClass="text-danger" ErrorMessage="The last name field is required." />
                </div>
            </div>
            <div>
                <div>
                    E-mail
                </div>
                <div>
                    <telerik:RadTextBox ID="email" placeholder="E-mail" runat="server" ValidationExpression="^[\w\.\-]+@[a-zA-Z0-9\-]+(\.[a-zA-Z0-9\-]{1,})*(\.[a-zA-Z]{2,3}){1,2}$" MaxLength="100"></telerik:RadTextBox><br />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="email" CssClass="text-danger" ErrorMessage="The E-mail field is required." />
                    
                </div>
            </div>
            <div>
                <div>
                    Password
                </div>
                <div>
                    <telerik:RadTextBox ID="password" runat="server" TextMode="Password" MaxLength="20"></telerik:RadTextBox><br />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="password" CssClass="text-danger" ErrorMessage="The password field is required." />
                </div>
            </div>
            <div>
                <div>
                    Confirm Password
                </div>
                <div>
                    <telerik:RadTextBox ID="confirmPass" runat="server" TextMode="Password" MaxLength="20"></telerik:RadTextBox><br />
                    <asp:CompareValidator runat="server" ControlToCompare="password" ControlToValidate="confirmPass" CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirm password do not match." />
                </div>
            </div>
            <br />
            <telerik:RadButton ID="checkbox" runat="server" ToggleType="CheckBox" ButtonType="LinkButton" AutoPostBack="false" Checked="true" BackColor="White">
                <ToggleStates>
                    <telerik:RadButtonToggleState Text="Add to mailing list." PrimaryIconCssClass="rbToggleCheckboxChecked" />
                    <telerik:RadButtonToggleState Text="Do not add to mailing list." PrimaryIconCssClass="rbToggleCheckbox" />
                </ToggleStates>
            </telerik:RadButton>
            <br />
            <br />
            <telerik:RadCaptcha ID="RadCaptcha1" runat="server" EnableRefreshImage="true"></telerik:RadCaptcha>
            <telerik:RadButton ID="Register" runat="server" Text="Register" OnClick="Register_Click"></telerik:RadButton>
        </div>
    </form>
</body>
</html>
