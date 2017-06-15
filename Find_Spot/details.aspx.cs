using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Find_Spot.App_Code;
using GoogleMaps.LocationServices;

namespace Find_Spot
{
    public partial class details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Session["sellerid"] = Request.QueryString["id"]; ;
                if (Session["personid"] == null)
                {
                    Response.Redirect("~/index.aspx");
                }
                else if (Session["sellerid"] != null)
                {
                    DataTable dtSeller = SqlObject.FetchDataTable("select  * from dbo.person,dbo.seller,dbo.facility where dbo.seller.sellerid = '" + Session["sellerid"].ToString() + "' and agentid=dbo.person.personid and dbo.facility.sellerid= dbo.seller.sellerid ");
                    DataTable dtRules = SqlObject.FetchDataTable("select * from rules where sellerid = '" + Session["sellerid"].ToString() + "'");
                    DataTable dtReview = SqlObject.FetchDataTable("select * from review where sellerid = '" + Session["sellerid"].ToString() + "'");
                    //show room details
                    lblavailablerooms.Text = dtSeller.Rows[0]["availableroom"].ToString();
                    lblvacancy.Text = dtSeller.Rows[0]["vacancy"].ToString();
                    lblTitle.Text = dtSeller.Rows[0]["title"].ToString();
                    lblrent.Text = dtSeller.Rows[0]["rent"].ToString();
                    lblBed.Text = yesno(dtSeller.Rows[0]["bed"].ToString());
                    lblParking.Text = yesno(dtSeller.Rows[0]["parking"].ToString());
                    lblTransport.Text = yesno(dtSeller.Rows[0]["transport"].ToString());
                    lblWifi.Text = yesno(dtSeller.Rows[0]["wifi"].ToString());
                    lblTv.Text = yesno(dtSeller.Rows[0]["tv"].ToString());
                    lblLaundry.Text = yesno(dtSeller.Rows[0]["laundry"].ToString());
                    lblHeater.Text = yesno(dtSeller.Rows[0]["heater"].ToString());
                    lblBreakfast.Text = yesno(dtSeller.Rows[0]["breakfast"].ToString());
                    //contact info
                    lblContact.Text = " Name: " + dtSeller.Rows[0]["name"].ToString() + "    Email:" + dtSeller.Rows[0]["contact"].ToString();
                    lblDescription.Text = dtSeller.Rows[0]["description"].ToString();
                    lblRules.Text = dtRules.Rows[0]["rules"].ToString();
                    int rate = Convert.ToInt32(dtReview.Rows[0]["rating"].ToString());
                    switch (rate)
                    {

                        case 1:
                            star1.Checked = true;
                            break;

                        case 2:
                            star2.Checked = true;
                            break;

                        case 3:
                            star3.Checked = true;
                            break;

                        case 4:
                            star4.Checked = true;
                            break;

                        case 5:
                            star5.Checked = true;
                            break;
                        default:
                            break;
                    }
                    //fetch map for the location
                    var address = dtSeller.Rows[0]["location"].ToString();
                    var locationService = new GoogleLocationService();
                    var point = locationService.GetLatLongFromAddress(address);
                    var latitude = point.Latitude;
                    var longitude = point.Longitude;
                    mapFrame.Src = "https://maps.google.com/maps?q=" + latitude + "," + longitude + "&hl=es;z=14&amp;output=embed";
                }
                else
                {
                    Response.Redirect("~/allRooms.aspx");
                }
            }
            catch(Exception err)
            {

            }
           
        }

        protected String yesno(String value)
        {
            return value.Equals("True") ? "YES" : "NO";
        }
    }
}