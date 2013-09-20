<%@ Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Root.Store.RetailNetwork" EnableSessionState="True" %>
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
<body><div class="wrapper">
<div class="bg"><img src="Content/Images/home_bg.jpg" /></div>
<!--#include file="header.html"-->
  
<div class="container" style="padding-bottom: 0; padding-right: 0;">
  <img src="Content/Images/network_pic.jpg" width="522" height="657" class="fright" style="margin: -12px 0 20px 0; box-shadow: 0 0 28px 18px rgba(255, 255, 255, 0.9); -webkit-box-shadow:0 0 28px 18px rgba(255, 255, 255, 0.9);" />
  <h2>Retail Network</h2>
  <h3>The reach to take products farther, 
  the resources to drive sales higher.</h3>
  <p class="f14">Whatever the retailer, whatever the product, our Super Broker Network ensures that your brand has the very best representation and promotion. <strong>bdirect</strong> teams in Seattle, Dallas, and Bentonville manage brands at Costco, Amazon, 7-Eleven, Walmart and Sam’s Club. This network of resources means you get the best team on the ground at the nation’s top Mass, Club, and C-Stores. </p>
 <p class="f14">Our sterling sales network is augmented by exceptional partners at each of the other top retailers in the US. The bdirect Los Angeles office serves as both your brand ambassador and sales strategy center — ensuring timely execution, seamless marketing, and speed-to-market.</p>
  <p class="f14">&nbsp;</p>
  <p class="f14"><strong>bdirect retail partners include: </strong><br>
  Walmart, Sam’s Club, Costco, 7-Eleven, Target, Amazon, SuperValu, Safeway, BJ’s, HEB, Kroger, Walgreens, CVS, Rite Aid, Circle K, GNC, Vitamin Shoppe, and Sprouts Food.</p>
  <p class="f14">Ask us about other accounts where your brand 
    can drive incremental sales.</p>


  <div class="clear"></div>
</div>
  </div>
<!--#include file="footer.html"-->

 
<uc:TrackingPixels ID="TrackingPixels" runat="server" />
</body>
</html>
