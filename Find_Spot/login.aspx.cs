using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Find_Spot.App_Code;
namespace Find_Spot
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Text = "";
        }
        protected void btnLogin_Click(object sender,EventArgs e)
        {
            DataTable dt = SqlObject.FetchDataTable("SELECT * FROM dbo.person WHERE username = '" + txtName.Text + "' and password = '"+txtPassword.Text+"'");
            if(dt.Rows.Count !=0)
            {
                Session["personid"] = dt.Rows[0]["PERSONID"].ToString();
                Session["username"] = dt.Rows[0]["USERNAME"].ToString();
                Response.Redirect("~/allRooms.aspx");
            }
            else
            {
                lblError.Text = "Invalid Username or password.Try again.";
            }
        }
    }
}