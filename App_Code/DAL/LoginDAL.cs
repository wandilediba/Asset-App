using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;
using System.Data;

/// <summary>
/// Summary description for LoginDAL
/// </summary>
public class LoginDAL
{
    static string cnString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
    OracleConnection con = new OracleConnection(cnString);
	public LoginDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int LoginUser(string username,string password)
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
     
            return cmd.ExecuteNonQuery();

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