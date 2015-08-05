using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Login
/// </summary>
public class Login
{
	public Login()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int LoginUser(string username, string password)
    {
        LoginDAL lDal = new LoginDAL();
        try
        {
           return lDal.LoginUser(username, password);
        }

        catch
        {
            throw;
        }

        
    }
}