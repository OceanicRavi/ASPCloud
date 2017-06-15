<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Find_Spot.register" EnableEventValidation="false" %>

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
                        <asp:RequiredFieldValidator ID="ReqtxtName" runat="server" ControlToValidate="txtNameRegister"
                            ErrorMessage="Name is required." ValidationGroup="ValidateRegistration" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtEmailRegister" runat="server" CssClass="text" placeholder="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqEmail" runat="server" ControlToValidate="txtEmailRegister"
                            ErrorMessage="Email is required." ValidationGroup="ValidateRegistration" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtUsernameRegister" runat="server" CssClass="text" placeholder="Username"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqUsername" runat="server" ControlToValidate="txtUsernameRegister"
                            ErrorMessage="Username is required." ValidationGroup="ValidateRegistration" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtPasswordRegister" runat="server" CssClass="text" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqPassword" runat="server" ControlToValidate="txtPasswordRegister"
                            ErrorMessage="Password is required." ValidationGroup="ValidateRegistration" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtPasswordReenter" runat="server" CssClass="text" placeholder="Reenter Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqPasswordReenter" runat="server" ControlToValidate="txtPasswordReenter"
                            ErrorMessage="ReEnter Password" ValidationGroup="ValidateRegistration" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="ComparetxtPasswordReenter" runat="server" ControlToCompare="txtPasswordRegister"
                            ControlToValidate="txtPasswordReenter" ValidationGroup="ValidateRegistration" ErrorMessage="Your passwords do not match up!"
                            Display="Dynamic" ForeColor="Red" />
                        <asp:Label runat="server" CssClass="label" Text="Select Role : "></asp:Label>
                        <asp:RadioButtonList class="radio" ID="rbtnRoleList" runat="server" CssClass="radio-inline" RepeatDirection="Vertical">
                            <asp:ListItem Text="BUYER" Value="BUYER"></asp:ListItem>
                            <asp:ListItem Text="SELLER" Value="SELLER"></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="ReqrbtnRoleList" runat="server" ControlToValidate="rbtnRoleList"
                            ErrorMessage="Select one Option." ValidationGroup="ValidateRegistration" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <label class="hvr-sweep-to-right">
                            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" ValidationGroup="ValidateRegistration" CausesValidation="true" /></label>
                    </form>
                    <p>Already have a Find Spot account? <a href="login.aspx">Login</a></p>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
