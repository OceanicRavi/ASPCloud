<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="addRooms.aspx.cs" Inherits="Find_Spot.addRooms" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-right">
        <div class="container">
            <h3>Add Room Details</h3>
            <div class="login-top">
                <h4><asp:Label ID="lbladdRoomNotification" runat="server" Visible="false"></asp:Label></h4>
                <div class="form-info">
                    <form>
                        <asp:TextBox ID="txtTitle" runat="server" placeholder="Enter Title"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqtxtTitle" runat="server" ControlToValidate="txtTitle"
                            ErrorMessage="Title is required." ValidationGroup="ValidateAdd" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtAvailableRoom" runat="server" CssClass="text" placeholder="Enter Number of Rooms Available"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqtxtAvailableRoom" runat="server" ControlToValidate="txtAvailableRoom"
                            ErrorMessage="Available Room is required." ValidationGroup="ValidateAdd" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtVacancy" runat="server" CssClass="text" placeholder="Persons Per Room"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqtxtVacancy" runat="server" ControlToValidate="txtVacancy"
                            ErrorMessage="Persons Per Room is required." ValidationGroup="ValidateAdd" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtRent" runat="server" CssClass="text" placeholder="Enter Rent"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqtxtRent" runat="server" ControlToValidate="txtRent"
                            ErrorMessage="Rent is required." ValidationGroup="ValidateAdd" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="text" placeholder="Enter Address"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqtxtAddress" runat="server" ControlToValidate="txtAddress"
                            ErrorMessage="Address is required." ValidationGroup="ValidateAdd" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtDescription" runat="server" CssClass="text" placeholder="Enter Description" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqtxtDescription" runat="server" ControlToValidate="txtDescription"
                            ErrorMessage="Description is required." ValidationGroup="ValidateAdd" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:Label ID="lblFacilities" runat="server" CssClass="text" Text="Facilities:"></asp:Label>
                        <asp:CheckBoxList ID="chkFacilities" runat="server">
                            <asp:ListItem Text="Bed"></asp:ListItem>
                            <asp:ListItem Text="Parking"></asp:ListItem>
                            <asp:ListItem Text="Transport"></asp:ListItem>
                            <asp:ListItem Text="WiFi"></asp:ListItem>
                            <asp:ListItem Text="TV"></asp:ListItem>
                            <asp:ListItem Text="Laundry"></asp:ListItem>
                            <asp:ListItem Text="Heater"></asp:ListItem>
                            <asp:ListItem Text="Breakfast"></asp:ListItem>
                        </asp:CheckBoxList><br />
                        <asp:TextBox ID="txtRules" runat="server" CssClass="text" placeholder="Enter Rules If Any" ></asp:TextBox>
                        <label class="hvr-sweep-to-right">
                            <asp:Button ID="btnSaveRoomDetails" runat="server" Text="Save Room Details" OnClick="btnSaveRoomDetails_Click" ValidationGroup="ValidateAdd" CausesValidation="true" />
                        </label>
                    </form>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
