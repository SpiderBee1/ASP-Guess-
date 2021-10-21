/*
    FILE        : hiloRange.aspx.cs
	PROJECT     : WDD - Assignment 5
	PROGRAMMER  : Matthew Goodman
	DATE        : 2020-11-21
	Description : this file contains the "code behind"
    for the guessing stage of the game
*/

using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A05
{
    public partial class hiloGuess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //update page content with session variables
            NameSpan.InnerText = Session["Player"].ToString();
            RangeSpan.InnerText = Session["MinNum"].ToString() + " to " + Session["MaxNum"].ToString() + ":" + Session["Secret"].ToString();
            //clear previous server error (if any)
            ServerError.InnerText = "";
        }

        protected void SubmitGuess_Click(object sender, EventArgs e)
        {
            int currentMax = (int)Session["MaxNum"];
            int currentMin = (int)Session["MinNum"];
            int target = (int)Session["Secret"];
            int guess = int.Parse(GuessPrompt.Text);
            //GuessPrompt.Text = "";  //clear guess box
            //do error checking
            if (guess >= currentMin && guess <= currentMax)
            {
                //valid range
                if (guess == target)
                {
                    //the guess was correct
                    //go to the win page
                    Server.Transfer("hiloWin.aspx");
                }
                else
                {
                    //incorrect guess
                    if (guess < target)     //guess was lower than target
                    {
                        //adjust minimum value
                        currentMin = guess + 1;
                        Session["MinNum"] = currentMin;
                        
                    }
                    else    //guess was greater that the target
                    {
                        //adjust maximum value
                        currentMax = guess - 1;
                        Session["MaxNum"] = currentMax;
                    }
                }
            } 
            else
            {
                //invalid range
                //this error message doesn't work because i didn't have time
                ServerError.InnerText = "Your guess was out of range!(" + currentMin + " to " + currentMax + ")";
                return; //end of event handler
            }
            Server.Transfer("hiloGuess.aspx");  //call page again to show correct values 
                //this is a very stupid implementation because I am low on time :(
        }
    }
}