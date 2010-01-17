﻿<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="loginProgrammatic.aspx.vb"
	Inherits="OpenIdRelyingPartyWebFormsVB.LoginProgrammatic" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="Main">
	<h2>Login Page </h2>
	<asp:Label ID="Label1" runat="server" Text="OpenID Login" />
	<asp:TextBox ID="openIdBox" runat="server" />
	<asp:Button ID="loginButton" runat="server" Text="Login" OnClick="loginButton_Click" />
	<asp:CustomValidator runat="server" ID="openidValidator" ErrorMessage="Invalid OpenID Identifier"
		ControlToValidate="openIdBox" EnableViewState="false" OnServerValidate="openidValidator_ServerValidate" />
	<br />
	<asp:Label ID="loginFailedLabel" runat="server" EnableViewState="False" Text="Login failed"
		Visible="False" />
	<asp:Label ID="loginCanceledLabel" runat="server" EnableViewState="False" Text="Login canceled"
		Visible="False" />
	<asp:CheckBox ID="noLoginCheckBox" runat="server" Text="Extensions only (no login) -- most OPs don't yet support this" />
</asp:Content>