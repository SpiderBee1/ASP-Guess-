/*
    FILE        : hiloRange.aspx.cs
	PROJECT     : WDD - Assignment 5
	PROGRAMMER  : Matthew Goodman
	DATE        : 2020-11-21
	Description : this file contains the "code behind"
    for the max number getting stage of the game
*/

using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A05.OtherPages
{
    public partial class hiloRange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //set dynamic value for player greeting
            NameSpan.InnerText = Session["Player"].ToString();
        }

        protected void SubmitRange_Click(object sender, EventArgs e)
        {
            //set the range session variables
            Session["MaxNum"] = int.Parse(RangePrompt.Text);
            Session["MinNum"] = 1;
            //generate the random number session variable
            var rand = new Random();
            Session["Secret"] = rand.Next(1, int.Parse(RangePrompt.Text) + 1);
            //go to the guessing page
            Server.Transfer("hiloGuess.aspx");
        }
    }
}