using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Find_Spot
{
    public partial class main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Session["personid"] != null && Session["username"] != null )
                {
                    
                    registerLink.Text = " Hi,"+Session["username"];
                    loginLink.Text = "Logout";
                    lnkAddRoom.Visible = true;
                    lnkAddRoom.Enabled = true;
                    lnkSearchRoom.Visible = true;
                    lnkSearchRoom.Visible = true;
                    
                }
            }
        }

       

        protected void registerLink_Click(object sender, EventArgs e)
        {
            if(Session["personid"]==null)
            {
                Response.Redirect("~/register.aspx");
            }
            else
            {
                Response.Redirect("~/allRooms.aspx");
            }
        }

        protected void loginLink_Click(object sender, EventArgs e)
        {
            if (loginLink.Text == "Logout")
            {
                Session["personid"] = null;
                Session["username"] = null;
                loginLink.Text = "Login";
                registerLink.Text = "Register";
                lnkAddRoom.Visible = false;
                lnkAddRoom.Enabled = false;
                lnkSearchRoom.Visible = false;
                lnkSearchRoom.Enabled = false;
                Response.Redirect("~/index.aspx");
            }
            else
            {
                Response.Redirect("~/login.aspx");
            }
        }

        protected void lnkAddRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/addRooms.aspx");
        }

        protected void lnkSearchRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/allRooms.aspx");
        }
    }
}