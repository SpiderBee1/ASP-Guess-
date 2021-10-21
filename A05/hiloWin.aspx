<!--
    FILE        : hiloWin.aspx
	PROJECT     : WDD - Assignment 5
	PROGRAMMER  : Matthew Goodman
	DATE        : 2020-11-21
	Description : this page contains the layout
	for the victory screen.
-->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hiloWin.aspx.cs" Inherits="A05.hiloWin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hi-Lo Game</title>
    <link rel="STYLESHEET" type="text/css" href="hilo-style.css"/>
</head>
<body style="background-color: #42f590;">
    <form id="form1" runat="server">
        			<table id="alignment">
			<tr>
			<td>
				<div id="WinBox" class="PBox">  <!-- content box for victory statement -->
					<h1>You Win!!</h1>
					<p>You Guessed The Number!</p>
                    <asp:Button ID="Replay" runat="server" Text="Play Again" style="margin: 10px;" OnClick="Replay_Click"/>
				</div>
			</td></tr>
			</table>
    </form>
</body>
</html>
