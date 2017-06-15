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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender,EventArgs e)
        {
            try
            {
                UserDetails.TableName = "tblPERSON";
                SqlObject._objCmd.Parameters.Clear();
                SqlObject._objCmd.Parameters.AddWithValue("role", rbtnRoleList.SelectedValue);
                SqlObject._objCmd.Parameters.AddWithValue("name", txtNameRegister.Text);
                SqlObject._objCmd.Parameters.AddWithValue("contact", txtEmailRegister.Text);
                SqlObject._objCmd.Parameters.AddWithValue("username", txtUsernameRegister.Text);
                SqlObject._objCmd.Parameters.AddWithValue("password", txtPasswordRegister.Text);

                UserDetails.Insert();

                DataTable dt = SqlObject.FetchDataTable("SELECT PERSONID FROM dbo.person WHERE contact = '" + txtEmailRegister.Text + "'");
                Session["personid"] = dt.Rows[0]["PERSONID"].ToString();
                Session["username"] = txtUsernameRegister.Text;
                Response.Redirect("~/allRooms.aspx");
            }
            catch(Exception er)
            {
                txtNameRegister.Text = er.Message.ToString();
            }
            
        }
    }
}