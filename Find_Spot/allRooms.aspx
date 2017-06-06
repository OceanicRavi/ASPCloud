<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="allRooms.aspx.cs" Inherits="Find_Spot.allRooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="dealers">
<div class="container">
	<h3>Rooms Available</h3>
	<div class="price">
		<div class="price-grid">
			<div class="col-sm-4 price-top">
				<h4>City</h4>
				<select class="in-drop">
					<option>Select City</option>
					<option>Auckland</option>
                    <option>Hamilton</option>
                    <option>Wellington</option>
                    <option>Otago</option>
				</select>
			</div>
			<div class="col-sm-4 price-top">
				<h4>Category</h4>
				<select class="in-drop">
					<option>Select Category</option>
					<option>Apartment</option>
					<option>Independent House</option>
					<option>Row House</option>
					
				</select>
			</div>
			<div class="col-sm-4 price-top">
				<h4>Rooms</h4>
				<select class="in-drop">
					<option>No. of Rooms</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					
				</select>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="price-grid">
			<div class="col-sm-6 price-top1">
				<h4>Price Range</h4>
				<ul>
					<li>
						<select class="in-drop">
							<option>Price From</option>
							<option>0</option>
							<option>5  </option>
							<option>10 </option>
							<option>15 </option>
							<option>20 </option>
							<option>25 </option>
							<option>30 </option>
							<option>35 </option>
							<option>40 </option>
							<option>45 </option>
							<option>50 </option>
							<option>55 </option>
							<option>60 </option>
							<option>65 </option>
							<option>70 </option>
							<option>75 </option>
							<option>80 </option>
							<option>85 </option>
							<option>90 </option>
							<option>95 </option>
						</select>
					</li>
					<span>-</span>
					<li>
						<select class="in-drop">
							<option>Price To</option>
							<option>5 </option>
							<option>10 </option>
							<option>15 </option>
							<option>20 </option>
							<option>25 </option>
							<option>30 </option>
							<option>35 </option>
							<option>40 </option>
							<option>45 </option>
							<option>50 </option>
							<option>55 </option>
							<option>60 </option>
							<option>65 </option>
							<option>70 </option>
							<option>75 </option>
							<option>80 </option>
							<option>85 </option>
							<option>90 </option>
							<option>95 </option>
							<option>100</option>
						</select>
					</li>
				</ul>
			</div>
			<div class="col-sm-6 price-top1">
                <h4>Search</h4>
                <ul><li>
                    <label class="hvr-sweep-to-right">
				<asp:Button id="btnSearch" runat="server" Text="Search"/></label></li></ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="dealer-top">
		
			<div class="deal-top-top">
				<div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> Avondale</a></h5>
								<p>Room Area : 150 Sq.Yrds</p>
								<p>Price: $250</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> Avondale</a></h5>
								<p>Room Area : 150 Sq.Yrds</p>
								<p>Price: $250</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
                <div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> Avondale</a></h5>
								<p>Room Area : 150 Sq.Yrds</p>
								<p>Price: $250</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
                <div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> Avondale</a></h5>
								<p>Room Area : 150 Sq.Yrds</p>
								<p>Price: $250</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
                <div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> Avondale</a></h5>
								<p>Room Area : 150 Sq.Yrds</p>
								<p>Price: $250</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
                <div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> Avondale</a></h5>
								<p>Room Area : 150 Sq.Yrds</p>
								<p>Price: $250</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
                <div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> Avondale</a></h5>
								<p>Room Area : 150 Sq.Yrds</p>
								<p>Price: $250</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
                <div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> Avondale</a></h5>
								<p>Room Area : 150 Sq.Yrds</p>
								<p>Price: $250</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
                <div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> Avondale</a></h5>
								<p>Room Area : 150 Sq.Yrds</p>
								<p>Price: $250</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
                <div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> Avondale</a></h5>
								<p>Room Area : 150 Sq.Yrds</p>
								<p>Price: $250</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
                <div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> Avondale</a></h5>
								<p>Room Area : 150 Sq.Yrds</p>
								<p>Price: $250</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
                <div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> Avondale</a></h5>
								<p>Room Area : 150 Sq.Yrds</p>
								<p>Price: $250</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				
				
			<div class="clearfix"> </div>
		</div>		
		<%--<div class="deal-top-top">
				<div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de4.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> ut perspiciatis</a></h5>
								<p>Plot Area : 150 Sq.Yrds</p>
								<p>Price: $250000</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de5.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> ut perspiciatis</a></h5>
								<p>Plot Area : 150 Sq.Yrds</p>
								<p>Price: $250000</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de6.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> ut perspiciatis</a></h5>
								<p>Plot Area : 150 Sq.Yrds</p>
								<p>Price: $250000</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de7.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> ut perspiciatis</a></h5>
								<p>Plot Area : 150 Sq.Yrds</p>
								<p>Price: $250000</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
			<div class="clearfix"> </div>
		</div>		
		<div class="deal-top-top">
				<div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de8.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> ut perspiciatis</a></h5>
								<p>Plot Area : 150 Sq.Yrds</p>
								<p>Price: $250000</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de9.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> ut perspiciatis</a></h5>
								<p>Plot Area : 150 Sq.Yrds</p>
								<p>Price: $250000</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de10.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> ut perspiciatis</a></h5>
								<p>Plot Area : 150 Sq.Yrds</p>
								<p>Price: $250000</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3 top-deal-top">
					<div class=" top-deal">
						<a href="details.aspx" class="mask"><img src="images/de11.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="details.aspx"> ut perspiciatis</a></h5>
								<p>Plot Area : 150 Sq.Yrds</p>
								<p>Price: $250000</p>
							</div>
							<div class="top-deal2">
								<a href="details.aspx" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
			<div class="clearfix"> </div>
		</div>	--%>	
	</div>
</div>
</div>
</asp:Content>
