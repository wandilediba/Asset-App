using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Oracle.DataAccess.Client;
using System.Web.Configuration;
using System.Data;

/// <summary>
/// Summary description for BookDAL
/// </summary>
public class BookDAL
{
    static string cnString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
    OracleConnection con = new OracleConnection(cnString);
	public BookDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void BookItem(string username, string password)
    {

        //Creating Connection with SQL Server Database

        OracleConnection con = new OracleConnection(cnString);

        con.Open();
        //store procedure name
        OracleCommand cmd = new OracleCommand("user_login", con);

        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
            //inserting with data procedure paramenters
            cmd.Parameters.Add("firstname", OracleDbType.Varchar2, username, ParameterDirection.Input);
            cmd.Parameters.Add("lastname", OracleDbType.Varchar2, password, ParameterDirection.Input);

            cmd.ExecuteNonQuery();

        }

        catch (Exception ex)
        {

            throw ex;

        }

        finally
        {

            con.Close();

            con.Dispose();

        }

    }
}