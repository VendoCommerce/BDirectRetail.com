<%@ Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Root.Store.Commision" EnableSessionState="True" %>
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
<div class="bg"><img src="Content/Images/commission_bg.jpg" /></div>
<!--#include file="header.html"-->
  
<div class="container" style="padding-bottom: 0">
  <img src="Content/Images/commission_pic.jpg" width="368" height="490" class="fright" style="margin: -23px 0 0 40px" /><h2>Commission Structure</h2>
  <h3 class="orange">Results that register.</h3>
  <p class="f14">bdirect has built an impressive client roster by taking an innovative 
    approach to sales and marketing. Our unique structure has 
    produced remarkable results for the brands we serve. Beyond that, 
    our novel approach to finding solutions has led to a commission 
    structure that is an industry-first. Among the benefits of our unique 
    compensation plan is the fact that it can free-up capital during 
    the early phase of launching new sales and marketing initiatives. 
    If you’re the least bit intrigued, we invite you to call the number 
    below to learn more about the positive benefits of bdirect’s proprietary 
    commission structure. </p>
  <p class="f14">Learn about bdirect’s proprietary compensation plan: call 310-914-5999.
  </p>

  <div class="clear"></div>
</div>
   </div>
<!--#include file="footer.html"-->

 
<uc:TrackingPixels ID="TrackingPixels" runat="server" />
</body>
</html>
