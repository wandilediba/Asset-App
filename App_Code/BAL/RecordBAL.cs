using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for RecordBAL
/// </summary>
public class RecordBAL
{
    public RecordBAL()
    {
    }
   
     public DataTable RetrieveRecords()
     {
        //Creating the object of DAL file.

        RecordDAL rdAL = new  RecordDAL();
        try
          {

            //Calling the method of DAl using DAL object

            //and return the result to the caller of the method.

            return rdAL.RetrieveRecords();
        }
        catch
        {
            throw;
        }

        finally
        {
            //rdAL = null;
        }
    }

    //Used for Inserting Record in the Database

     public int InsertRecord_BAL( string firstname, string lastname, DateTime dateofbirth,DateTime hiredate , string email, string phonenumber)
     {
         RecordDAL rDal = new RecordDAL();
         try
         {
             return rDal.InsertRecord( firstname,lastname, dateofbirth, hiredate, email, phonenumber);
         }

         catch
         {
             throw;
         }

         finally
         {
             rDal = null;
         }
     }

        //Updating Record
     public int UpdateRecord_BAL( int employeeid, string firstname, string lastname, string email, Int32 phonenumber)
        { 
            RecordDAL rDal = new RecordDAL();
         try
          {
              return rDal.UpdateRecord( employeeid, firstname, lastname, email, phonenumber);
          }

        catch
        {
            throw;
        }

        finally
        {
            rDal = null;
        }


    }
     public void DeleteEmployee(int employeeid)
     {
         RecordDAL rDal = new RecordDAL();
         try
         {
            rDal.DeleteEmployee(employeeid);
         }

         catch
         {
             throw;
         }

         finally
         {
             rDal = null;
         }
     }


        // Used for checking exixtance of the Record in the Database

        public int checkExistance_BAL(int employeeid)
        {
            RecordDAL rDal = new RecordDAL();
            try
            {
                return rDal.checkExistance(employeeid);
            }
            catch (Exception ex)
            {
                throw;
            }

            finally
            {
                rDal = null;
            }

        }
}