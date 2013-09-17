<%@ Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Root.contact" EnableSessionState="True" %>

<%@ Register Src="UserControls/ContactUs.ascx" TagName="ContactUs" TagPrefix="uc" %>
<%@ Register Src="UserControls/TrackingPixels.ascx" TagName="TrackingPixels" TagPrefix="uc" %>
<%@ Register Src="UserControls/ShippingForm.ascx" TagName="BillingFormControl" TagPrefix="uc" %>
<%@ Register Src="UserControls/header.ascx" TagName="Header" TagPrefix="uc" %>
<%@ Register Src="UserControls/Footer.ascx" TagName="Footer" TagPrefix="uc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <meta name="description" content="CycleVitamins are a multivitamin system for women formulated for each day of your cycle." />
    <meta name="keywords" content="Vitamins, multivitamins, PMS, bloating, low energy, bone health, brain health, heart health" />
    <link href="styles/global.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form runat="server" id="billing1">
    <asp:ScriptManager ID="Scriptmanager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div id="header">
                <uc:Header ID="Header" runat="server" />
            </div>
            <div id="Content">
                <h2>
                    Contact Us
                </h2>
                <div id="contact_form" runat="server">
                    <asp:Panel ID="Panel_Contactus" runat="server">
                        <uc:ContactUs ID="ucContactUs" runat="server" />
                    </asp:Panel>
                </div>
            </div>
            <!-- end stretch_container -->
           
            <!-- end footer -->
        </ContentTemplate>
    </asp:UpdatePanel>
    <div id="footer">
        <uc:Footer ID="Footer" runat="server" />
    </div>
    <uc:TrackingPixels ID="TrackingPixels" runat="server" />
    </form>
</body>
</html>
