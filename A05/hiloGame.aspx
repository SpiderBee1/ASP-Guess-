<!--
	FILE        : hiloGame.aspx
	PROJECT     : WDD - Assignment 5
	PROGRAMMER  : Matthew Goodman
	DATE        : 2020-11-21
	Description : This page is the default/starting page for 
	the hilo program. It handles the name entry stage of the
	game.
-->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hiloGame.aspx.cs" Inherits="A05.hiloStart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hi-Lo Game</title>
    <link rel="STYLESHEET" type="text/css" href="hilo-style.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <table id="alignment" class= "structure">
			<tr>
			<td>
				<div id="nameBox" class="PBox">		<!-- content box for getting the player name input -->
					<h1>Please Enter your Name</h1>
					<table><tr>
						<td><asp:TextBox ID="NamePrompt" runat="server" size="30" maxlength ="63"></asp:TextBox></td>
						<td><asp:Button ID="CheckName" runat="server" Text="Begin" OnClick="CheckName_Click" /></td>
					</tr></table>
				</div>
                <asp:RequiredFieldValidator 
					ID="RequiredFieldValidator1" 
					runat="server" 
					ErrorMessage="Name cannot be blank!" 
					ControlToValidate="NamePrompt" 
					CssClass="ASPError">
                </asp:RequiredFieldValidator>
			</td>
			</tr>
			</table>
    </form>
</body>
</html>
