<%@ Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Root.contact" EnableSessionState="True" %>

<%@ Register Src="UserControls/ContactUs.ascx" TagName="ContactUs" TagPrefix="uc" %>
<%@ Register Src="UserControls/TrackingPixels.ascx" TagName="TrackingPixels" TagPrefix="uc" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/Scripts/fancybox/jquery.fancybox.css">
<script src="/Scripts/fancybox/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="/scripts/jwplayer/jwplayer.js"></script>
<script src="/Scripts/jquery.cycle.js"></script>
<script type="text/javascript">jwplayer.key="JEtVDryJGkO9Q215yroU+Wz4oLeTJGMccGU/Wb3Kv9s=";</script>
<script src="/Scripts/global.js"></script>

<link href="styles/global.css" rel="stylesheet" type="text/css" />


</head>
<body>
<div class="wrapper">

        
         <div class="bg"><img src="Content/Images/home_bg.jpg" /></div>
<!--#include file="header.html"-->
<div class="container" style="background: rgba(255,255,255,.98);">
<h2>Contact Us</h2>
<p style="padding-bottom: 40px">If you have an innovative product that might just be tomorrow’s mega-brand, we’d love to talk with you. Call today to find out how 
we can place your product with America’s top retailers and take your brand to the next level.</p>
        <div class="fleft" style="width: 300px;">
        <p class="f23 bold orange">bdirect inc.</p>
        <p>11601 Wilshire Blvd., Suite 1800<br>

Los Angeles, CA 90025</p>

  <p>

Phone: 310-914-5999<br>

Fax: 310-914-5353</p>

        
        </div>
        <div class="fright">
    <form runat="server" id="billing1">
            <asp:ScriptManager ID="Scriptmanager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        
                    <asp:Panel ID="Panel_Contactus" runat="server">
                        <uc:ContactUs ID="ucContactUs" runat="server" />
                    </asp:Panel>
                     
      </ContentTemplate>
    </asp:UpdatePanel>
    </form>
                </div>
                
            <div class="clear"></div>
    <uc:TrackingPixels ID="TrackingPixels" runat="server" />
</div>
   </div>
<!--#include file="footer.html"-->



</body>
</html>
