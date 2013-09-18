<%@ Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Root.Store.StratigicPartners" EnableSessionState="True" %>
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
<script>
	  $('.slides').cycle({
                fx: 'scrollHorz',
                timeout: 0,
                speed: 500,
                cleartypeNoBg: true,
				next: '.next',
				prev: '.prev',
				pager: '.navthumbs'
            });
</script>
<link href="styles/global.css" rel="stylesheet" type="text/css" />


</head>
<body><div class="wrapper">
<div class="bg"><img src="Content/Images/home_bg.jpg" /></div>
<!--#include file="header.html"-->
  
<div class="container">
  <h2>Strategic Partners</h2>
  <h3>Partnering for success. </h3>
  <p class="f14">The ability to collaborate with key partners is critical to the success of every sales and marketing program. Case in point: if you 
    have working relationships with outside vendors, we are delighted to integrate their services into your program. And if you’re a 
    client who requires a turnkey sales and marketing solution, we can offer proven vendors whose services meet all parameters for 
    excellence. Either way, the ability to collaborate with talented specialists helps us deliver retail programs that produce the kind of 
    sales our clients have come to expect. </p>
  <p class="f14"><strong>Each of the following strategic partners was handpicked based on their talent and success:</strong>
  </p>


<div style="width: 560px; margin: 40px auto; background: #fff; box-shadow: 0 0 28px 18px rgba(255, 255, 255, 0.9); -webkit-box-shadow:0 0 28px 18px rgba(255, 255, 255, 0.9);">
<div class="prev" style="float:left; margin-right: 65px; width: 17px; margin-top: 120px;"><img src="Content/Images/arrow_prev.png" width="17" height="41" /></div>
<div class="slides" style="width: 380px; float:left;">
<div>
  <p class="text-center pad20"><img src="Content/Images/logo_generaldisplayworks.jpg" width="264" height="111" /></p>
  <p><span class="orange bold f14">General Displayworks -</span>  General DisplayWorks® is a leading 
    retail merchandising company creating in-store programs that 
    engage shoppers, are built around meaningful insights, rooted in 
    strategies that influence shopper behavior, and deliver profitable 
    sales. From point-of-sale displays to in-store signage, store fixturing 
    and retail packaging, General DisplayWorks® specializes in solutions 
    that help you convert shoppers to buyers.</p>
</div>
<div>
  <p class="text-center"><img src="Content/Images/logo_cs.png" width="341" height="94" /></p>
  <p><span class="orange bold f14">Conversion Systems -</span>  Conversion Systems specializes in 
    working with ecommerce companies and brand manufacturers. 
    They possess a unique talent for increasing online and retail 
    revenues by maximizing the ROI generated from all media channels. 
    Their services include website development, search engine marketing, 
    online media buying, multivariate testing services, 
    mobile services, and more.</p>
</div>
<div>
  <p class="text-center"><img src="Content/Images/logo_retaildirectmedia.png" width="227" height="110" /></p>
  <p><span class="orange bold f14">Retail Direct Media -</span>  Retail Direct Media is a full 
    service Direct Response media agency. By utilizing all 
    forms of Direct Response media, they can drive results 
    at retail at a fraction of the cost of traditional media.</p>
</div>

</div>
<div class="next" style="float:left; margin-left: 65px; width: 17px; margin-top: 120px;"><img src="Content/Images/arrow_next.png" width="17" height="41" /></div>
<div class="clear"></div>
<div class="text-center navthumbs clearfix"></div>
</div>


</div>
   </div>
<!--#include file="footer.html"-->

 
<uc:TrackingPixels ID="TrackingPixels" runat="server" />
</body>
</html>
