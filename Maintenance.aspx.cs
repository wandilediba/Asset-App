using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;

public partial class Default2 : System.Web.UI.Page
{
    static string cnString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
    OracleConnection con = new OracleConnection(cnString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnBook_Click(object sender, EventArgs e)
    {
         try
        {
            // open the connection.
            con.Open();

            //query string
            string ins = "INSERT INTO asset_maintanance (MAINTANANCE_ID, ASSERT_ID, DEPARTMENT_NAME, EMPLOYEE_ID, CATEGORY_ID, MAINTAINANCEDATE, MAINTAINANCEDESCRIPTION)" + " " +
                          " VALUES (MAINTANANCE_ID_SEQ.nextval, :asset_id, :department_name, :employee_id, :category_id, :dateR, :description )";

            OracleCommand cmd = new OracleCommand(ins, con);

            //adding values from text box
            cmd.Parameters.Add("asset_id", OracleDbType.Int32).Value = txtAssertId.Text;
            cmd.Parameters.Add("department_name", OracleDbType.Varchar2).Value = txtDept.Text;
            cmd.Parameters.Add("employee_id", OracleDbType.Int32).Value = txtEmp.Text;
            cmd.Parameters.Add("category_id", OracleDbType.Int32).Value = txtCat.Text;
            cmd.Parameters.Add("dateR", OracleDbType.Date).Value = txtDate.Text;
            cmd.Parameters.Add("description", OracleDbType.Varchar2).Value = txtDesc.Text;
            
            cmd.ExecuteNonQuery();
            lblInfo.Text = "Item  is in for maintenance ";
        }
        catch (Exception err)
        {
            // Handle an error by displaying the information.
            lblInfo.Text = "Error reading the database. "+ err.ToString();
        }
        finally
        {
            // calling Close() won't cause an error.
            con.Close();
            txtAssertId.Text = "";
            txtCat.Text = "";
            txtDate.Text = "";
            txtDept.Text = "";
            txtDesc.Text = "";
            txtEmp.Text = "";
        }

    }
    
}