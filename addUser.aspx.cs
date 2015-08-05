using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Oracle.DataAccess.Client;
//using System.Data.OracleClient;
using Oracle.DataAccess.Types;
using System.Web.Configuration;



public partial class addUser : System.Web.UI.Page
{
    static string cnString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
    OracleConnection con = new OracleConnection(cnString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       
         //Creating the object of BAL

        RecordBAL rBAL=new RecordBAL();      

 

        int recordStatus = 0;
        //int employeeid = 109;
       // int employeeid = 0;
        string firstname = txtName.Text.ToString();

        string lastname=txtSurname.Text.ToString();

        DateTime dateofbirth = Convert.ToDateTime( txtDoB.Text.ToString());

       // int Age=Convert.ToInt32( txtAge.Text);

        DateTime hiredate = Convert.ToDateTime( txtDateHire.Text.ToString());

        string email = txtEmail.Text.ToString();

        string phonenumber = txtPhone.Text.ToString();

       // int UserID=Convert.ToInt32(txtPhone.Text);

 
        try{

            recordStatus = rBAL.InsertRecord_BAL(firstname, lastname, dateofbirth,dateofbirth, email, phonenumber);
            lblInfo.Text = "New Record Inserted Successfully.";
            if(recordStatus > 0)

                lblInfo.Text = "New Record Inserted Successfully.";
                txtName.Text = "";
                txtSurname.Text = "";
                txtDoB.Text = "";
                txtDateHire.Text = "";
                txtEmail.Text = "";
                txtPhone.Text = "";
            

        }

        catch (Exception ex)

        {

            lblInfo.Text = ex.Message.ToString();
           

        }

        finally

        {

            rBAL = null;           

        }

 

      

    }



    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Server.Transfer("Home.aspx");
    }
}