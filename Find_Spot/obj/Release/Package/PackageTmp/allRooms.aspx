<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="allRooms.aspx.cs" Inherits="Find_Spot.allRooms" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dealers">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="container">
            <h3>Rooms Available</h3>
            <div class="price">
                <div class="price-grid">
                    <div class="col-sm-4 price-top">
                        <h4>Rating</h4>
                        <asp:DropDownList runat="server" ID="ddlRating" CssClass="in-drop">
                            <asp:ListItem Text="Ratings" Selected="True" Value="0"></asp:ListItem>
                            <asp:ListItem Text="1"  Value="1"></asp:ListItem>
                            <asp:ListItem Text="2"  Value="2"></asp:ListItem>
                            <asp:ListItem Text="3"  Value="3"></asp:ListItem>
                            <asp:ListItem Text="4"  Value="4"></asp:ListItem>
                            <asp:ListItem Text="5"  Value="5"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-sm-4 price-top">
                        <h4>Rooms</h4>
                        <asp:DropDownList runat="server" ID="ddlRooms" CssClass="in-drop">
                            <asp:ListItem Text="No. of Rooms" Selected="True" Value="0"></asp:ListItem>
                            <asp:ListItem Text="1"  Value="1"></asp:ListItem>
                            <asp:ListItem Text="2"  Value="2"></asp:ListItem>
                            <asp:ListItem Text="3"  Value="3"></asp:ListItem>
                            <asp:ListItem Text="4"  Value="4"></asp:ListItem>
                            <asp:ListItem Text="5"  Value="5"></asp:ListItem>
                        </asp:DropDownList>
                    </div>


                    <div class="clearfix"></div>
                </div>
                <div class="price-grid">
                    <div class="col-sm-6 price-top1">
                        <h4>Price Range</h4>
                        <ul>
                            <li>
                                <asp:DropDownList runat="server" ID="ddlPriceFrom" CssClass="in-drop">
                                    <asp:ListItem Text="Price From" Selected="True" Value=""></asp:ListItem>
                                </asp:DropDownList>

                            </li>
                            <span>-</span>
                            <li>
                                <asp:DropDownList runat="server" ID="ddlPriceTo" CssClass="in-drop">
                                    <asp:ListItem Text="Price To" Selected="True" Value=""></asp:ListItem>
                                </asp:DropDownList>
                            </li>
                        </ul>
                    </div>
                    <div class="col-sm-4 price-top">
                        <h4>Facilities</h4>

                        <asp:CheckBoxList ID="chkFacilities" runat="server" RepeatDirection="Horizontal" RepeatColumns="2" >
                            <asp:ListItem Text="Bed"></asp:ListItem>
                            <asp:ListItem Text="Parking"></asp:ListItem>
                            <asp:ListItem Text="Transport"></asp:ListItem>
                            <asp:ListItem Text="WiFi"></asp:ListItem>
                            <asp:ListItem Text="TV"></asp:ListItem>
                            <asp:ListItem Text="Laundry"></asp:ListItem>
                            <asp:ListItem Text="Heater"></asp:ListItem>
                            <asp:ListItem Text="Breakfast"></asp:ListItem>
                        </asp:CheckBoxList>


                    </div>
                    <div class="col-sm-6 price-top1">
                        <h4>Search</h4>
                        <ul>
                            <li>
                                <label class="hvr-sweep-to-right">
                                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click"/>
                                </label>
                            </li>
                            <li>
                                <label class="hvr-sweep-to-right">
                                    <asp:Button ID="btnSearchAll" runat="server" Text="Search All" OnClick="btnSearchAll_Click"/>
                                </label>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            
                    <div class="dealer-top">

                <div class="deal-top-top"  >
                    <div id="divAllRooms" runat="server">

                    </div>


                    <div class="clearfix"></div>
                </div>

            </div>
              
            
        </div>
                </ContentTemplate>
                </asp:UpdatePanel>
        
    </div>
</asp:Content>
