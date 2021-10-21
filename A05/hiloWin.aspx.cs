/*
    FILE        : hiloWin.aspx.cs
	PROJECT     : WDD - Assignment 5
	PROGRAMMER  : Matthew Goodman
	DATE        : 2020-11-21
	Description : this file contains the "code behind"
    for the victory page.
*/

using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A05
{
    public partial class hiloWin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Replay_Click(object sender, EventArgs e)
        {
            //reset the session variables
            Session["MaxNum"] = "";
            Session["MinNum"] = "";
            Session["Secret"] = "";

            Server.Transfer("hiloRange.aspx");
        }
    }
}