<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Find_Spot.login" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="login-right">
	<div class="container">
		<h3>Login</h3>
		<div class="login-top">
				
				<div class="form-info">
                    
					<form >
                        <asp:TextBox ID="txtName" runat="server" CssClass="text" placeholder="Username"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqtxtName" runat="server" ControlToValidate="txtName"
                            ErrorMessage="Username is required." ValidationGroup="ValidateLogin" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="text" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqtxtPassword" runat="server" ControlToValidate="txtPassword"
                            ErrorMessage="Password is required." ValidationGroup="ValidateLogin" ForeColor="Red">
                        </asp:RequiredFieldValidator>
						 <label class="hvr-sweep-to-right">
				           	<asp:Button ID="btnLogin" runat="server"  Text="Login" value="submit" onClick="btnLogin_Click" ValidationGroup="ValidateLogin" CausesValidation="true"/>
				           </label>
					</form>
                    <asp:Label ID="lblError" runat ="server" ForeColor="Red"></asp:Label>
                    <p>Don't have Find Spot account? <a href="register.aspx">Register</a></p>
				</div>
			
	</div>
</div>
</div>
</asp:Content>
