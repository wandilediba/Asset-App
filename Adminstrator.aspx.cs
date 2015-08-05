using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using Oracle.DataAccess.Client;

public partial class Default2 : System.Web.UI.Page
{
    static string cnString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
    OracleConnection con = new OracleConnection(cnString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text;
        string password = TextBox2.Text;

        Login lBAL = new Login();
        int recordStatus = 0;

        try
        {

            recordStatus = lBAL.LoginUser(username, password);


            if (recordStatus < 0)
            {

                Server.Transfer("Default.aspx");
            }
            else
            {


                lblError.Text = "Incorrect Password or Username";
            }

        }

        catch (Exception ex)
        {
            lblError.Text = "Incorrect Password or Username";
        }

        
    }


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text;
        string password = TextBox2.Text;

        Login lBAL = new Login();
        int recordStatus = 0;

        try
        {

            recordStatus = lBAL.LoginUser(username, password);


            if (recordStatus < 0)
            {

                Server.Transfer("DeleteRecords.aspx");
            }
            else
            {


                lblError.Text = "Incorrect Password or Username";
            }

        }

        catch (Exception ex)
        {
            lblError.Text = "Incorrect Password or Username";
        }
    }
}