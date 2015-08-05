using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using Oracle.DataAccess.Client;
using System.Data;

/// <summary>
/// Summary description for RecordDAL
/// </summary>
/// 

public class RecordDAL
{
    static string cnString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
    OracleConnection con = new OracleConnection(cnString);
	public RecordDAL()
	{
    }

    
 

    // Used to Insert Records in Database

    public int InsertRecord(string firstname, string lastname, DateTime dateofbirth,DateTime hiredate, string email, string phonenumber)

    {

        //Creating Connection with SQL Server Database

        OracleConnection con = new OracleConnection(cnString);

        con.Open();
        //store procedure name
        OracleCommand cmd = new OracleCommand("AddRecords", con);

        cmd.CommandType = CommandType.StoredProcedure;

        try

        {
            //inserting with data procedure paramenters
            cmd.Parameters.Add("firstname", OracleDbType.Varchar2, firstname, ParameterDirection.Input);
            cmd.Parameters.Add("lastname", OracleDbType.Varchar2, lastname, ParameterDirection.Input);
            cmd.Parameters.Add("dateofbirth", OracleDbType.Date, dateofbirth, ParameterDirection.Input);
            cmd.Parameters.Add("hiredate", OracleDbType.Date, hiredate, ParameterDirection.Input);
            cmd.Parameters.Add("email", OracleDbType.Varchar2, email, ParameterDirection.Input);
            cmd.Parameters.Add("phonenumber", OracleDbType.Int32, phonenumber, ParameterDirection.Input);


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

   //Upadte
    // Used to Insert Records in Database

    public int UpdateRecord( int employeeid, string firstname, string lastname, string email, Int32 phonenumber)
    {
        //Creating Connection with Oracle Server Database
        OracleConnection con = new OracleConnection(cnString);

        con.Open();
        //store procedure name
        OracleCommand cmd = new OracleCommand("UpdateRecords", con);

        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
            //procedure paramenters
            cmd.Parameters.Add("employeeid", OracleDbType.Int32, employeeid,  ParameterDirection.Input);
            cmd.Parameters.Add("firstname", OracleDbType.Varchar2, firstname,    ParameterDirection.Input);
            cmd.Parameters.Add("lastname", OracleDbType.Varchar2, lastname, ParameterDirection.Input);
            cmd.Parameters.Add("email", OracleDbType.Varchar2, email, ParameterDirection.Input);
            cmd.Parameters.Add("phonenumber", OracleDbType.Int32, phonenumber, ParameterDirection.Input);
            return cmd.ExecuteNonQuery();

        }

        catch (Exception ex)
        {

            throw;

        }

        finally
        {

            con.Close();

            con.Dispose();

        }

    }

    public DataTable RetrieveRecords()
    {

        OracleConnection con = new OracleConnection(cnString);

        OracleDataAdapter da = new OracleDataAdapter("select employeeid, firstname, lastname, email, phonenumber from employeess", con);

       //da.SelectCommand.CommandType = CommandType.StoredProcedure;

        OracleCommandBuilder bui = new OracleCommandBuilder(da);

        DataTable dt = new DataTable();



        try
        {

            da.Fill(dt);

            return dt;

        }

        catch
        {

            throw;

        }

        finally
        {



            da.Dispose();

            con.Close();

            con.Dispose();

        }



    }

    public int checkExistance(int employeeid)
    {

        OracleConnection con = new OracleConnection(cnString);

        con.Open();

        OracleCommand cmd = new OracleCommand("Select * from employeess where employeeid=" + employeeid + "", con);

        OracleDataReader dr;

        try
        {

            dr = cmd.ExecuteReader();

            if (dr.Read())
            {

                return 1;

            }

            else

                return 0;

           }

        catch (Exception ex)
        {

            throw;

        }

        finally
        {

            con.Close();

            con.Dispose();

        }

    }

    public void DeleteEmployee(int employeeid)
    {

        OracleConnection con = new OracleConnection(cnString);

        con.Open();
        //store procedure name
        OracleCommand cmd = new OracleCommand("DELETEEMPLOYEE", con);

        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
            //procedure paramenters
            cmd.Parameters.Add("employeeid", OracleDbType.Int32, employeeid, ParameterDirection.Input);
            
            cmd.ExecuteNonQuery();

        }

        catch (Exception ex)
        {

            throw;

        }

        finally
        {

            con.Close();

            con.Dispose();

        }


      
        
    }



    
}
