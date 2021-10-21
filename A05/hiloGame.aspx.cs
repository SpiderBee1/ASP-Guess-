/*
    FILE        : hiloGame.aspx.cs
	PROJECT     : WDD - Assignment 5
	PROGRAMMER  : Matthew Goodman
	DATE        : 2020-11-21
	Description : this file contains the "code behind"
    for the landing page of the game
*/

using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A05
{
    public partial class hiloStart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckName_Click(object sender, EventArgs e)
        {
            //save the player name to a session variable
            Session["Player"] = NamePrompt.Text.Trim();
            //go to range selection page
            Server.Transfer("hiloRange.aspx");
        }
    }
}