<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RegisterUser.aspx.vb" Inherits="OnshoreRealty.RegisterUser" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
        <telerik:RadCaptcha ID="RadCaptcha1" runat="server"></telerik:RadCaptcha>
    </div>
    </form>
</body>
</html>
