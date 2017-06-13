using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace Find_Spot.App_Code
{
    public class SqlObject
    {
        public static string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ToString();
        public static SqlCommand _objCmd = new SqlCommand();
        public static DataTable _objDt;
        public static DataSet _objDs;
        public static SqlDataAdapter _objAdp;
        public static SqlConnection _objCon;
        public static SqlDataReader _objDr;

        public SqlObject()
        {
            // TODO: Add constructor logic here
        }

        public static string OpenConnection()
        {
            try
            {
                _objCon = new SqlConnection(con);
                _objCon.Open();

                return ("");
            }
            catch (Exception e)
            {
                return (e.Message);
            }
        }

        public static string CloseConnection()
        {
            try
            {
                _objCon.Close();
                return ("");
            }
            catch (Exception ex)
            {
                return (ex.Message);
            }
        }

        static public DataSet FetchDataSet(string SqlStatement)
        {
            try
            {
                OpenConnection();
                _objAdp = new SqlDataAdapter(SqlStatement, _objCon);
                _objDs = new DataSet();
                _objAdp.Fill(_objDs);
                return (_objDs);
            }

            finally
            {
                CloseConnection();
                _objAdp.Dispose();
            }
            return (null);
        }

        static public DataTable FetchDataTable(string SqlStatement)
        {
            try
            {
                OpenConnection();
                _objAdp = new SqlDataAdapter(SqlStatement, _objCon);
                _objDt = new DataTable();
                _objAdp.Fill(_objDt);
                return (_objDt);
            }
            catch (Exception e)
            {
                throw e; // 
            }
            finally
            {
                CloseConnection();
                _objAdp.Dispose();
            }
            return (null);
        }

        static public SqlDataReader FetchDataReader(string SqlStatement)
        {
            try
            {
                OpenConnection();
                _objCmd = new SqlCommand(SqlStatement, _objCon);
                _objDr = _objCmd.ExecuteReader();
                return (_objDr);
            }
            catch (Exception e)
            {

            }
            finally
            {
                //  CloseConnection();
                // _objAdp.Dispose();
            }
            return (null);
        }

        static public string ExecuteNonQuery()
        {
            try
            {
                if (_objCon == null)
                    _objCon = new SqlConnection();
                if (_objCon.State == ConnectionState.Closed)
                {
                    OpenConnection();
                }

                _objCmd.Connection = _objCon;
                _objCmd.ExecuteNonQuery();
                if (_objCon.State == ConnectionState.Open)
                {
                    CloseConnection();
                }
                return "";
            }
            catch (Exception e)
            {
                return (e.Message);
            }
            finally
            {
            }
        }

        static public string ExecuteStatement(string sqlstatement)
        {
            try
            {
                if (_objCon == null)
                    _objCon = new SqlConnection();
                if (_objCon.State == ConnectionState.Closed)
                {
                    OpenConnection();
                }
                _objCmd.Connection = _objCon;
                _objCmd.CommandText = sqlstatement;
                string retVal = Convert.ToString(_objCmd.ExecuteScalar());

                if (_objCon.State == ConnectionState.Open)
                {
                    CloseConnection();
                }
                return retVal;
            }
            catch (Exception e)
            {
                return (e.Message);
            }
            finally
            {
            }
        }

        public static void Fill_Dropdown(DropDownList ddls, string Query, string DataTextField, string DataValueField, string defText, string defValue)
        {

            string sql = Query;
            DataSet ds_ddown = new DataSet();
            ds_ddown.Clear();

            ds_ddown = FetchDataSet(sql);
            ddls.DataSource = ds_ddown.Tables[0].DefaultView;
            ddls.DataTextField = DataTextField;
            ddls.DataValueField = DataValueField;
            ddls.DataBind();

            if (defText == "" && defValue == "")
            {
                ddls.Items.Insert(0, new ListItem(defText, defValue));
                ddls.SelectedIndex = 0;
            }
            else
            {
                ddls.Items.Insert(0, new ListItem(defText, defValue));
                ddls.SelectedIndex = 0;
            }


        }

        public static void Fill_ListBox(ListBox lsbx, string Query, string DataTextField, string DataValueField, string defText, string defValue)
        {
            string sql = Query;
            DataSet ds_lsbx = new DataSet();
            ds_lsbx.Clear();
            ds_lsbx = FetchDataSet(sql);
            lsbx.DataSource = ds_lsbx.Tables[0].DefaultView;
            lsbx.DataTextField = DataTextField;
            lsbx.DataValueField = DataValueField;
            lsbx.DataBind();

            if (defText == "" && defValue == "")
            {
                //lsbx.Items.Insert(0, "Select");
                lsbx.SelectedIndex = 0;
            }
            else
            {
                //lsbx.Items.Insert(0,defText.ToString());
                lsbx.SelectedIndex = 0;
            }

        }

        public static void BindGridview(GridView grd, string qry)
        {
            try
            {
                OpenConnection();
                _objAdp = new SqlDataAdapter(qry, _objCon);
                _objDt = new DataTable();
                _objAdp.Fill(_objDt);
                grd.DataSource = _objDt;
                grd.DataBind();
            }
            catch (Exception e)
            {

            }
            finally
            {
            }
        }
    }
}