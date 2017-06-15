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
                        $(window).load(function () {
                            $('.flexslider').flexslider({
                                animation: "slide",
                                controlNav: "thumbnails"
                            });
                        });
                    </script>
                </div>
                <div class="buy-sin-single">
                    <div class="col-sm-5 middle-side immediate" style="padding:1em;">
                        <h4>Availability:
                            <asp:Label ID="lblavailablerooms" runat="server"></asp:Label>, Vacancy:
                            <asp:Label ID="lblvacancy" runat="server"></asp:Label></h4>
                        <p>
                            <span class="bath4">Title :</span><span class="two">
                            <asp:Label ID="lblTitle" runat="server"></asp:Label></span>
                        </p>
                        <p>
                            <span class="bath4">Rent :</span><span class="two">$
                            <asp:Label ID="lblrent" runat="server"></asp:Label></span>
                        </p>
                        <p>
                            <span class="bath4">Bed :</span> <span class="two">
                                <asp:Label ID="lblBed" runat="server"></asp:Label></span>
                        </p>
                        <p>
                            <span class="bath4">Parking Available :</span> <span class="two">
                                <asp:Label ID="lblParking" runat="server"></asp:Label></span>
                        </p>
                        <p>
                            <span class="bath4">Near to transport service :</span> <span class="two">
                                <asp:Label ID="lblTransport" runat="server"></asp:Label></span>
                        </p>
                        <p>
                            <span class="bath4">Wifi :</span> <span class="two">
                                <asp:Label ID="lblWifi" runat="server"></asp:Label></span>
                        </p>
                        <p>
                            <span class="bath4">TV :</span> <span class="two">
                                <asp:Label ID="lblTv" runat="server"></asp:Label></span>
                        </p>
                        <p>
                            <span class="bath4">Laundry Service :</span> <span class="two">
                                <asp:Label ID="lblLaundry" runat="server"></asp:Label></span>
                        </p>
                        <p>
                            <span class="bath4">Heater :</span> <span class="two">
                                <asp:Label ID="lblHeater" runat="server"></asp:Label></span>
                        </p>
                        <p>
                            <span class="bath4">Breakfast :</span> <span class="two">
                                <asp:Label ID="lblBreakfast" runat="server"></asp:Label></span>
                        </p>
                        <p>
                            <span class="bath">Rating: </span> <span class="two">
                                <link href="css/rate.css" rel="stylesheet" type="text/css" />
                                <fieldset class="rating">
                                    <input type="radio" id="star5" name="rating" value="5" runat="server" /><label class="full" for="star5" title="Awesome - 5 stars"></label>
                                    <input type="radio" id="star4half" name="rating" value="4 and a half" runat="server" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
                                    <input type="radio" id="star4" name="rating" value="4" runat="server" /><label class="full" for="star4" title="Pretty good - 4 stars"></label>
                                    <input type="radio" id="star3half" name="rating" value="3 and a half" runat="server"/><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
                                    <input type="radio" id="star3" name="rating" value="3" runat="server" /><label class="full" for="star3" title="Meh - 3 stars"></label>
                                    <input type="radio" id="star2half" name="rating" value="2 and a half" runat="server"/><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
                                    <input type="radio" id="star2" name="rating" value="2" runat="server"/><label class="full" for="star2" title="Kinda bad - 2 stars"></label>
                                    <input type="radio" id="star1half" name="rating" value="1 and a half" runat="server"/><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
                                    <input type="radio" id="star1" name="rating" value="1" runat="server"/><label class="full" for="star1" title="Sucks big time - 1 star"></label>
                                    <input type="radio" id="starhalf" name="rating" value="half" runat="server"/><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
                                </fieldset>
                            </span>
                        </p>
                        <div class="   right-side">
                            <a href="#" class="hvr-sweep-to-right more">Contact Owner:
                                <asp:Label ID="lblContact" runat="server"></asp:Label></a>
                        </div>
                    </div>
                    <div class="col-sm-7 buy-sin">
                        <h4>Description</h4>
                        <p>
                            <asp:Label ID="lblDescription" runat="server"></asp:Label></p>
                        <h4>Rules and Regulations</h4>
                        <p>
                            <asp:Label ID="lblRules" runat="server"></asp:Label></p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="map-buy-single">
                    <h4>Map Location</h4>
                    <div class="map-buy-single1">
                        <iframe id="mapFrame" runat="server" ></iframe>

                    </div>
                </div>
            </div>
        </div>






    </div>
    <div class="clearfix"></div>

    </div>
</asp:Content>
