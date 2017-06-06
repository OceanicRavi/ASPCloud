<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Find_Spot.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="login-right">
	<div class="container">
		<h3>Register</h3>
		<div class="login-top">
				
				<div class="form-info">
					<form>

						<asp:TextBox ID="txtNameRegister" runat="server" CssClass="text" placeholder="Name"></asp:TextBox>
                        <asp:TextBox ID="txtEmailRegister" runat="server" CssClass="text" placeholder="Email"></asp:TextBox>
                        <asp:TextBox ID="txtPasswordRegister" runat="server" CssClass="text" placeholder="Password"></asp:TextBox>
                        <label class="hvr-sweep-to-right">
                        <asp:Button ID="btnRegister" runat="server"  Text="Register"/></label>
					</form>
					<p>Already have a Find Spot account? <a href="login.aspx">Login</a></p>
				</div>
			
	</div>
</div>
</div>
</asp:Content>
