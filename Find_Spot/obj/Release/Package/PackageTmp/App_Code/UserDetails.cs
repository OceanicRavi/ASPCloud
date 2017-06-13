using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Find_Spot.App_Code
{
    public class UserDetails:SqlObject
    {
        static public string TableName;

        public static string GetQuery(string RequestQuery)
        {
            //CRUD OPERATIONS FOR DBO.PERSON

            //INSERT INTO DBO.PERSON
            if (RequestQuery.ToUpper() == "tblPERSON_Insert".ToUpper())
                return ("insert into dbo.person (role,name,contact,username,password) values (@role,@name,@contact,@username,@password)");
            //UPDATE DBO.PERSON
            if (RequestQuery.ToUpper() == "tblPERSON_Update".ToUpper())
                return ("update dbo.person set role = @role,name = @name,contact = @contact,username = @username,password = @password where personid = @personid");
            //DELETE DBO.PERSON
            if (RequestQuery.ToUpper() == "tblPERSON_Delete".ToUpper())
                return ("delete from dbo.person where personid = @personid");

            //CRUD OPERATIONS FOR DBO.SELLER

            //INSERT INTO DBO.SELLER
            if (RequestQuery.ToUpper() == "tblSELLER_Insert".ToUpper())
                return ("insert into dbo.seller (agentid,title,availableroom,vacancy,rent,location) values (@agentid,@title,@availableroom,@vacancy,@rent,@location)");
            //UPDATE DBO.SELLER
            if (RequestQuery.ToUpper() == "tblSELLER_Update".ToUpper())
                return ("update dbo.seller set agentid = @agentid,title = @title,availableroom = @availableroom,vacancy = @vacancy,rent = @rent,location = @location where sellerid = @sellerid");
            //DELETE DBO.SELLER
            if (RequestQuery.ToUpper() == "tblSELLER_Delete".ToUpper())
                return ("delete from dbo.seller where sellerid = @sellerid");

            //CRUD OPERATIONS FOR DBO.BUYER

            //INSERT INTO DBO.BUYER
            if (RequestQuery.ToUpper() == "tblBUYER_Insert".ToUpper())
                return ("insert into dbo.buyer (requestid,personid) values (@requestid,@personid)");
            //UPDATE DBO.BUYER
            if (RequestQuery.ToUpper() == "tblBUYER_Update".ToUpper())
                return ("update dbo.buyer set requestid = @requestid,personid = @personid where buyerid = @buyerid");
            //DELETE DBO.BUYER
            if (RequestQuery.ToUpper() == "tblBUYER_Delete".ToUpper())
                return ("delete from dbo.buyer where buyerid = @buyerid");

            //CRUD OPERATIONS FOR DBO.RULE

            //INSERT INTO DBO.RULE
            if (RequestQuery.ToUpper() == "tblRULE_Insert".ToUpper())
                return ("insert into dbo.rule (sellerid,rules) values (@sellerid,@rules)");
            //UPDATE DBO.RULE
            if (RequestQuery.ToUpper() == "tblRULE_Update".ToUpper())
                return ("update dbo.rule set sellerid = @sellerid,rules = @rules where ruleid = @ruleid");
            //DELETE DBO.RULE
            if (RequestQuery.ToUpper() == "tblRULE_Delete".ToUpper())
                return ("delete from dbo.rule where ruleid = @ruleid");

            //CRUD OPERATIONS FOR DBO.FACILITY

            //INSERT INTO DBO.FACILITY
            if (RequestQuery.ToUpper() == "tblFACILITY_Insert".ToUpper())
                return ("insert into dbo.facility (sellerid,bed,parking,transport,wifi,tv,laundry,heater,breakfast) values (@sellerid,@bed,@parking,@transport,@wifi,@tv,@laundry,@heater,@breakfast)");
            //UPDATE DBO.FACILITY
            if (RequestQuery.ToUpper() == "tblFACILITY_Update".ToUpper())
                return ("update dbo.facility set sellerid = @sellerid,bed = @bed,parking = @parking,transport = @transport,wifi = @wifi,tv = @tv,laundry = @laundry,heater = @heater,breakfast = @breakfast where facilityid = @facilityid");
            //DELETE DBO.FACILITY
            if (RequestQuery.ToUpper() == "tblFACILITY_Delete".ToUpper())
                return ("delete from dbo.facility where facilityid = @facilityid");

            //CRUD OPERATIONS FOR DBO.REVIEW

            //INSERT INTO DBO.REVIEW
            if (RequestQuery.ToUpper() == "tblREVIEW_Insert".ToUpper())
                return ("insert into dbo.review (sellerid,userid,comment,rating) values (@sellerid,@userid,@comment,@rating)");
            //UPDATE DBO.REVIEW
            if (RequestQuery.ToUpper() == "tblREVIEW_Update".ToUpper())
                return ("update dbo.review set sellerid = @sellerid,userid = @userid,comment = @comment,rating = @rating where reviewid = @reviewid");
            //DELETE DBO.REVIEW
            if (RequestQuery.ToUpper() == "tblREVIEW_Delete".ToUpper())
                return ("delete from dbo.review where reviewid = @reviewid");
            return ("");
        }

        static public string Insert()
        {
            try
            {
                _objCmd.CommandText = GetQuery(TableName + "_Insert");
                string retvalue = SqlObject.ExecuteNonQuery();
                if (retvalue == "")
                {
                    return ("");
                }
                else
                {
                    return retvalue;
                }

            }
            catch (Exception e)
            {
                return (e.Message);
            }
            //return ("");
        }

        static public string Update()
        {
            try
            {
                if (_objCmd == null)
                {
                    _objCmd = new SqlCommand();
                }
                _objCmd.CommandText = GetQuery(TableName + "_Update");
                string retval = SqlObject.ExecuteNonQuery();

                if (retval == "")
                {
                    return ("");
                }
                else
                {
                    return retval;
                }
                return ("");
            }
            catch (Exception e)
            {
                return (e.Message);
            }
        }

        static public string Delete()
        {
            try
            {
                _objCmd.CommandText = GetQuery(TableName + "_Delete");
                string retval2 = SqlObject.ExecuteNonQuery();
                if (retval2 == "")
                {
                    return ("");
                }
                else
                {
                    return retval2;
                }
                return ("");
            }
            catch (Exception e)
            {
                return (e.Message);
            }
        }
        
    }
}