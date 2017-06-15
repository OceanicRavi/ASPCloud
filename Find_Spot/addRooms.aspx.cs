using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Find_Spot.App_Code;
using System.Data;

namespace Find_Spot
{
    public partial class addRooms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["personid"]==null)
            {
                Response.Redirect("~/index.aspx");
            }
            lbladdRoomNotification.Visible = false;
        }

        protected void btnSaveRoomDetails_Click(object sender, EventArgs e)
        {
            //add to seller table
            UserDetails.TableName = "tblSELLER";
            SqlObject._objCmd.Parameters.Clear();
            SqlObject._objCmd.Parameters.AddWithValue("agentid", Session["personid"].ToString());
            SqlObject._objCmd.Parameters.AddWithValue("title", txtTitle.Text);
            SqlObject._objCmd.Parameters.AddWithValue("availableroom", txtAvailableRoom.Text);
            SqlObject._objCmd.Parameters.AddWithValue("vacancy", txtVacancy.Text);
            SqlObject._objCmd.Parameters.AddWithValue("rent", txtRent.Text);
            SqlObject._objCmd.Parameters.AddWithValue("location",txtAddress .Text);
            SqlObject._objCmd.Parameters.AddWithValue("description", txtDescription.Text);
            UserDetails.Insert();
            //add to facility table
            DataTable dt = SqlObject.FetchDataTable("SELECT * FROM dbo.seller WHERE title = '" + txtTitle.Text + "' and availableroom = '"+txtAvailableRoom.Text+"' and vacancy = '"+txtVacancy.Text+"' and rent = '"+txtRent.Text+"' and location like '"+txtAddress.Text+"' ");
            UserDetails.TableName = "tblFACILITY";
            SqlObject._objCmd.Parameters.Clear();
            SqlObject._objCmd.Parameters.AddWithValue("sellerid", dt.Rows[0]["SELLERID"].ToString());
            int i = 1;
            foreach (ListItem item in chkFacilities.Items)
            {
                
                SqlObject._objCmd.Parameters.AddWithValue("a"+i, item.Selected);
                i++;
            }
            UserDetails.Insert();
            //add to rule table
            UserDetails.TableName = "tblRULE";
            SqlObject._objCmd.Parameters.Clear();
            SqlObject._objCmd.Parameters.AddWithValue("sellerid", dt.Rows[0]["SELLERID"].ToString());
            SqlObject._objCmd.Parameters.AddWithValue("rules", txtRules.Text);
            UserDetails.Insert();
            UserDetails.TableName = "tblREVIEW";
            SqlObject._objCmd.Parameters.Clear();
            SqlObject._objCmd.Parameters.AddWithValue("sellerid", dt.Rows[0]["SELLERID"].ToString());
            SqlObject._objCmd.Parameters.AddWithValue("userid", dt.Rows[0]["AGENTID"].ToString());
            SqlObject._objCmd.Parameters.AddWithValue("comment", "No reviews or feedback yet available");
            Random random = new Random();
            int randomNumber = random.Next(0, 6);
            SqlObject._objCmd.Parameters.AddWithValue("rating", randomNumber);
            UserDetails.Insert();
            lbladdRoomNotification.Visible = true;
            lbladdRoomNotification.Text = "Room added successfully.";
            lbladdRoomNotification.ForeColor = System.Drawing.Color.Green;
        }
    }
}