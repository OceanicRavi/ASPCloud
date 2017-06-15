using Find_Spot.App_Code;
using GoogleMaps.LocationServices;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Find_Spot
{
    public partial class allRooms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                int i = 0;
                while (i <= 1000)
                {
                    ddlPriceFrom.Items.Add(new ListItem(i.ToString(), i.ToString()));
                    ddlPriceTo.Items.Add(new ListItem((i + 50).ToString(), (i + 50).ToString()));
                    i += 50;
                }
            }
           
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            DataTable dt = SqlObject.FetchDataTable("select * from seller join review on seller.sellerid = review.sellerid join facility on facility.sellerid=seller.sellerid where review.rating = '"+ddlRating.SelectedValue.ToString()+"' and facility.bed = '"+chkFacilities.Items[0].Selected+ "' or facility.parking = '" + chkFacilities.Items[1].Selected + "' or facility.transport = '" + chkFacilities.Items[2].Selected + "' or facility.wifi = '" + chkFacilities.Items[3].Selected + "' or facility.tv = '" + chkFacilities.Items[4].Selected + "' or facility.laundry = '" + chkFacilities.Items[5].Selected + "' or facility.heater = '" + chkFacilities.Items[6].Selected + "' or facility.breakfast = '" + chkFacilities.Items[7].Selected + "' and seller.availableroom = '"+ddlRooms.SelectedValue.ToString()+"' and seller.rent > '"+ddlPriceFrom.SelectedValue.ToString()+"' and seller.rent < '"+ddlPriceTo.SelectedValue.ToString()+"'");
            if(dt.Rows.Count !=0)
            {
                for (int i= 0;i < dt.Rows.Count;i++)
                {
                    var address = dt.Rows[i]["location"].ToString();
                    var locationService = new GoogleLocationService();
                    var point = locationService.GetLatLongFromAddress(address);
                    var latitude = point.Latitude;
                    var longitude = point.Longitude;
                    String htmltext = "   <div class='col - md - 3 top - deal - top'><div class='top-deal'>" +
                           "<a href = 'details.aspx' class='mask'>" +
                              "<iframe src = 'https://maps.google.com/maps?q=" + latitude + "," + longitude + "&hl=es;z=14&amp;output=embed'></iframe></ a >" +
                    "<div class='deal-bottom'>" +
                               "<div class='top-deal1'>" +
                                   "<h5><a href = 'details.aspx' > " + dt.Rows[i]["location"].ToString() + " </ a ></ h5 >" +
                                   "<p> Available Rooms : " + dt.Rows[i]["availableroom"].ToString() + "</p>" +
                                   "<p>Rent : $ " + dt.Rows[i]["rent"].ToString() + "</p>" +
                               "</div>" +
                               "<div class='top-deal2'>" +
                                   "<a href = 'details.aspx?id=" + dt.Rows[i]["sellerid"].ToString() + "' class='hvr-sweep-to-right more'>More</a>" +
                               "</div>" +
                               "<div class='clearfix'></div>" +
                           "</div>" +
                       "</div>" +
                   "</div>";
                    LiteralControl div1 = new LiteralControl(htmltext);
                    divAllRooms.Controls.Add(div1);
                }
               
            }
        }

        protected void btnSearchAll_Click(object sender, EventArgs e)
        {
            DataTable dt = SqlObject.FetchDataTable("select * from seller");
            if (dt.Rows.Count != 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    var address = dt.Rows[i]["location"].ToString();
                    var locationService = new GoogleLocationService();
                    var point = locationService.GetLatLongFromAddress(address);
                    var latitude = point.Latitude;
                    var longitude = point.Longitude;
                    String htmltext = "   <div class='col - md - 3 top - deal - top'><div class='top-deal'>" +
                           "<a href = 'details.aspx' class='mask'>" +
                              "<iframe src = 'https://maps.google.com/maps?q="+latitude+","+longitude+"&hl=es;z=14&amp;output=embed'></iframe></ a >" +
                    "<div class='deal-bottom'>" +
                               "<div class='top-deal1'>" +
                                   "<h5><a href = 'details.aspx' > " + dt.Rows[i]["location"].ToString() + " </ a ></ h5 >" +
                                   "<p> Available Rooms : " + dt.Rows[i]["availableroom"].ToString() + "</p>" +
                                   "<p>Rent : $ " + dt.Rows[i]["rent"].ToString() + "</p>" +
                               "</div>" +
                               "<div class='top-deal2'>" +
                                   "<a href = 'details.aspx?id=" + dt.Rows[i]["sellerid"].ToString() + "' class='hvr-sweep-to-right more'>More</a>" +
                               "</div>" +
                               "<div class='clearfix'></div>" +
                           "</div>" +
                       "</div>" +
                   "</div>";
                    LiteralControl div1 = new LiteralControl(htmltext);
                    divAllRooms.Controls.Add(div1);
                }

            }
        }
    }
}