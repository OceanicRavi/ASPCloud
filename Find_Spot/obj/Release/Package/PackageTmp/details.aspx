<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="Find_Spot.details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
	
	<div class="buy-single-single">
	
			<div class="col-md-9 single-box">
				
       <div class=" buying-top">	
			<div class="flexslider">
  <ul class="slides">
    <li data-thumb="images/ss.jpg">
      <img src="images/ss.jpg" />
    </li>
    <li data-thumb="images/ss1.jpg">
      <img src="images/ss1.jpg" />
    </li>
    <li data-thumb="images/ss2.jpg">
      <img src="images/ss2.jpg" />
    </li>
    <li data-thumb="images/ss3.jpg">
      <img src="images/ss3.jpg" />
    </li>
  </ul>
</div>
<!-- FlexSlider -->
  <script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>
</div>
<div class="buy-sin-single">
			<div class="col-sm-5 middle-side immediate">
					     <h4>Availability: Immediate</h4>
					     <p><span class="bath">Bed </span>: <span class="two">Yes</span></p>
					     <p>  <span class="bath1">Baths </span>: <span class="two">Common</span></p>
						 <p><span class="bath4">Parking Available</span> : <span class="two">Street</span></p>
						 <p><span class="bath5">Rent </span>:<span class="two"> $200</span></p>				 
						<div class="   right-side">
							 <a href="login.aspx" class="hvr-sweep-to-right more" >Contact Owner</a>     
					 </div>
					</div>
					 <div class="col-sm-7 buy-sin">
					 	<h4>Description</h4>
					 	<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature</p>
					 	<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC </p>
					 </div>
					 <div class="clearfix"> </div>
					</div>
					 <div class="map-buy-single">
					 	<h4>Map Location</h4>
						 	<div class="map-buy-single1">
								<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d37494223.23909492!2d103!3d55!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x453c569a896724fb%3A0x1409fdf86611f613!2sRussia!5e0!3m2!1sen!2sin!4v1415776049771"></iframe>
							
						</div>
					</div>
					</div>
		</div>
	

			
		
		
			
	  </div>
		<div class="clearfix"> </div>
		
	</div>
</asp:Content>
