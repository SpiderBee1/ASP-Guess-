<!--
    FILE        : hiloRange.aspx
	PROJECT     : WDD - Assignment 5
	PROGRAMMER  : Matthew Goodman
	DATE        : 2020-11-21
	Description : this page contains the page layout
	for the max number getting stage of the game
-->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hiloRange.aspx.cs" Inherits="A05.OtherPages.hiloRange" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hi-Lo Game</title>
    <link rel="STYLESHEET" type="text/css" href="hilo-style.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <table id="alignment">
			<tr>
			<td>
				<div id="nameBox" class="PBox">     <!-- content box for greeting the player by name -->
					<h1>Greetings!</h1>
					<p>Okay <span id="NameSpan" class="purple" runat="server"></span>, ready to play?</p>
				</div>
			</td></tr>
            <tr><td>
                <div id="rangeBox" class="PBox">    <!-- content box for getting the max number input -->
					<h1>Select the Maximum Number</h1>
					<table><tr>
						<td><asp:TextBox ID="RangePrompt" runat="server" size="30" maxlength ="63"></asp:TextBox></td>
						<td><asp:Button ID="SubmitRange" runat="server" Text="Play" OnClick="SubmitRange_Click" /></td>
					</tr></table>
				</div>
                <asp:RequiredFieldValidator 
					ID="RequiredFieldValidator1" 
					runat="server" 
					ErrorMessage="Maximum Number cannot be blank!"
					ControlToValidate="RangePrompt" 
					CssClass="ASPError" 
					Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:RangeValidator 
					ID="RangeValidator1" 
					runat="server" 
					MinimumValue="1" 
					MaximumValue="1000000"
					Type="Integer"
					ErrorMessage="Must be an integer value greater than one!"
					ControlToValidate="RangePrompt" 
					CssClass="ASPError" 
					Display="Dynamic">
                </asp:RangeValidator>
            </td></tr>
		</table>
    </form>
</body>
</html>
