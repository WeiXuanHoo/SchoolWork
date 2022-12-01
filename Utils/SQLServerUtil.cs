using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SchoolInfo.Utils
{
    public static class SQLServerUtil
    {
        private static string ConnectionString = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;

        public static bool Handler(string SQLString)
        {
            bool Result = true;
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand(SQLString, conn);
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                conn.Close();
            }
            return Result;
        }

        public static int HandlerReturnID(string SQLString)
        {
            int ReturnID = 0;
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            SqlTransaction tran = conn.BeginTransaction();
            SqlCommand cmd = new SqlCommand(SQLString + " select @@Identity", conn, tran);
            try
            {
                ReturnID = Convert.ToInt32(cmd.ExecuteScalar());
                tran.Commit();
            }
            catch (Exception ex)
            {
                return 0;
            }
            finally
            {
                conn.Close();
            }
            return ReturnID;
        }

        public static string GetData(string SQLString)
        {
            string DataStr = "";
            SqlConnection conn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand(SQLString, conn);
            conn.Open();
            try
            {
                DataStr = cmd.ExecuteScalar().ToString();
            }
            catch (Exception ex)
            {
                DataStr = "";
            }
            finally
            {
                conn.Close();
            }
            return DataStr;
        }

        public static DataTable GetDataTable(string SQLString)
        {
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand(SQLString, conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            try
            {
                sda.Fill(dt);
            }
            catch (Exception ex)
            {
                return null;
            }
            return dt;
        }

        public static DataSet GetDataSet(string SQLString)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand(SQLString, conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            try
            {
                sda.Fill(ds);
            }
            catch (Exception ex)
            {
                return null;
            }
            return ds;
        }

    }
}