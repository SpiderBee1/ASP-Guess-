<!--
    FILE        : hiloRange.aspx
	PROJECT     : WDD - Assignment 5
	PROGRAMMER  : Matthew Goodman
	DATE        : 2020-11-21
	Description : this page contains the page layout
	for the guessing stage of the game
-->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hiloGuess.aspx.cs" Inherits="A05.hiloGuess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hi-Lo Game</title>
    <link rel="STYLESHEET" type="text/css" href="hilo-style.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <table id="alignment">
			<tr><td>
				<div id="nameBox" class="PBox">     <!-- content box for greeting the player by name -->
					<h1>Game Time!</h1>
					<p>Okay <span id="NameSpan" class="purple" runat="server"></span>, make your best guess!</p>
				</div>
			</td></tr>
            <tr><td>
                <div id="rangeBox" class="PBox">    <!-- content box for current range -->
					<h1>Current Range</h1>
                    <p>Range is: <span id="RangeSpan" class="purple" runat="server"></span></p>
				</div>
            </td></tr>
            <tr><td>
                <div id="guessBox" class="PBox">    <!-- content box for guessing prompt -->
					<h1>Make Your Guess</h1>
					<table><tr>
						<td><asp:TextBox ID="GuessPrompt" runat="server" size="30" maxlength ="63"></asp:TextBox></td>
						<td><asp:Button ID="SubmitGuess" runat="server" Text="Make this Guess" OnClick="SubmitGuess_Click" /></td>
					</tr></table>
				</div>
				<div>
					<asp:RequiredFieldValidator 
					ID="RequiredFieldValidator1" 
					runat="server" 
					ErrorMessage="Your guess cannot be blank!" 
					ControlToValidate="GuessPrompt"
					CssClass="ASPError">
					</asp:RequiredFieldValidator>
				</div>
				<div>
					<asp:CompareValidator 
					ID="CompareValidator1" 
					runat="server" 
					ErrorMessage="Your guess must be an integer!" 
					Operator="DataTypeCheck" 
					Type="Integer" 
					ControlToValidate="GuessPrompt"
					CssClass="ASPError">
					</asp:CompareValidator>
				</div>
				<p id="ServerError" class="error" runat="server"></p>
            </td></tr>
			</table>
    </form>
</body>
</html>
