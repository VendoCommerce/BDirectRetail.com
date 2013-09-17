<%@ Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Root.Store.Index" EnableSessionState="True" %>
<%@ Register Src="UserControls/header.ascx" TagName="Header" TagPrefix="uc" %>
<%@ Register Src="UserControls/Footer.ascx" TagName="Footer" TagPrefix="uc" %>
<%@ Register Src="UserControls/TrackingPixels.ascx" TagName="TrackingPixels" TagPrefix="uc" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>OFFICIAL Plug & Safe Home Security - Plug-in Home Safety Device</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="description" content="Plug and Safe Home Security is the latest technology to protect your home from burglers and intruders. ">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<link href="/Styles/global.css" rel="stylesheet" type="text/css" media="all" />
<!-- add popup plugin -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/Scripts/fancybox/jquery.fancybox.pack.js"></script>
<link href="/Scripts/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript">
$(document).ready(function() {
			$('.fancybox').fancybox();
		});

</script>



</head>
<body>
<div id="header">
<uc:Header ID="Header" runat="server" />
</div> 
<div id="Container">
	
    WelCome to BDirectRetail.com Site !!!
  
    
</div>
<div id="footer">
<uc:Footer  ID="Footer" runat="server" />
</div>
<uc:TrackingPixels ID="TrackingPixels" runat="server" />
</body>
</html>
