using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Find_Spot.App_Code;
namespace Find_Spot
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender,EventArgs e)
        {
            UserDetails.TableName = "merchantdetail";
            SqlObject._objCmd.Parameters.Clear();
            SqlObject._objCmd.Parameters.AddWithValue("role", rbtnRoleList.SelectedValue);
            

            UserDetails.Insert();
        }
    }
}