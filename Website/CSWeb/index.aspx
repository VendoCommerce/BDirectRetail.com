<%@ Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Root.Store.Index" EnableSessionState="True" %>
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
<div class="bg"><img src="Content/Images/home_bg.jpg" width="1400" height="1083" /></div>
<!--#include file="header.html"-->
  
  <div class="homecontainer white">
  <p class="f39 bold pad12">Driven to Sell More<span class="f20" style="position:relative; bottom: 12px; display: inline-block;">&trade;</span>.</p>
  <div class="fleft pad12"><a href="video.html" class="video"><img src="Content/Images/smallvideo.jpg" width="172" height="103" /></a></div>
  <div class="fleft" style="margin: 30px 0 0 10px"><a href="video.html" class="video white">Click here to 
    <br>
    view our video.</a></div>
  <div class="clear"></div>
  <p class="f11 pad12" style="line-height: 17px">For the past 15 years, bdirect has been the “go to” sales and marketing agency for many of the nation’s hottest brands and products. Why? Because we’re an industry trendsetter; we know what works, we know what sells, and we know how to generate more buying momentum than other agencies. We have the experience, the people, and the talent to turn growing companies into top selling brands—and nothing less.  </p>
  <p class="text-right f13 bold pad6"><a href="aboutus.aspx">Read More ►</a></p>
  
  <div class="homeblock clearfix">
  <div class="homeblock_left">
  <h3>Get your product off the <br>
ground and on the shelf.</h3>
<p><strong>bdirect</strong> has the team, the tools, and the proven record 
of success to get your product in the store, on the shelf, 
and selling more.</p>
  </div>
  <div class="homeblock_right"><a href="services.aspx"><img src="Content/Images/home_arrow.png" width="17" height="37" /></a></div>
  </div>
  
  
   <div class="homeblock clearfix">
  <div class="homeblock_left">
  <h3>Expand distribution, <br>
generate momentum. </h3>
<p>With <strong>bdirect</strong>, you’ve got a team on the ground and support in the store to move your brand forward and your sales higher.  </p>
  </div>
  <div class="homeblock_right"><a href="retailnetwork.aspx"><img src="Content/Images/home_arrow.png" width="17" height="37" /></a></div>
  </div>
  
  
   <div class="homeblock clearfix">
  <div class="homeblock_left">
  <h3>An alliance of partners to <br>
build your brand. </h3>
<p>You set your sales and marketing objectives — we’ll 
connect you with teams of handpicked specialists to 
help you reach your goals.</p>
  </div>
  <div class="homeblock_right"><a href="strategicpartners.aspx"><img src="Content/Images/home_arrow.png" width="17" height="37" /></a></div>
  </div>
  
   <div class="homeblock clearfix">
  <div class="homeblock_left">
  <h3>It pays to look into our <br>
compensation plan.</h3>
<p>Call <span class="orange bold">310-914-5999</span> to learn about bdirect’s 
industry-first compensation structure.</p>
  </div>
  <div class="homeblock_right"><a href="commission.aspx"><img src="Content/Images/home_arrow.png" width="17" height="37" /></a></div>
  </div>
  
  
  
</div>
  </div>
<!--#include file="footer.html"-->
 
<uc:TrackingPixels ID="TrackingPixels" runat="server" />
</body>
</html>
