<%@ Page Title="Property Details" Language="vb" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="PropertyDetails.aspx.vb" Inherits="OnshoreRealty.PropertyDetails" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="PropertyDetails" runat="server" ItemType="BLL.PropertyVM" SelectMethod="PropertyDetails_GetItem" RenderOuterTable="false">
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
        <ItemTemplate>
            <div>
                <h3><%#:Item.address%></h3><br />
                <%#:Item.city%>, <%#:Item.state%>
            </div>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
