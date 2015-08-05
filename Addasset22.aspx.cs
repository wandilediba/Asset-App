using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;


public partial class Default3 : System.Web.UI.Page
{
    static string cnString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
    OracleConnection con = new OracleConnection(cnString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string department_name = Convert.ToString(Session["department_name"]);
        int category_id = Convert.ToInt32(Session["category_id"]);
        int employee_id = Convert.ToInt32(Session["employee_id"]);
        string description = Convert.ToString(Session["description"]);
        string assettype = Convert.ToString(Session["assettype"]);

        try
        {
            // open the connection.
            con.Open();

            //query string
            string ins = "INSERT INTO assets (assert_id, department_name, category_id, employee_id, description, assettype, model, dateacquired, purchaseprice, nextschedulemaintenace, assetstatus)" + " " +
                          " VALUES (asset_id_seq.NEXTVAL, :department_name, :category_id, :employee_id, :description, :assettype, :model, :dateacquired, :purchaseprice, :nextschedulemaintenace, :assetstatus )";

            OracleCommand cmd = new OracleCommand(ins, con);

            //adding values from text box
            cmd.Parameters.Add("department_name", OracleDbType.Varchar2).Value = department_name;
            cmd.Parameters.Add("category_id", OracleDbType.Int32).Value = category_id;
            cmd.Parameters.Add("employee_id", OracleDbType.Int32).Value = employee_id;
            cmd.Parameters.Add("description", OracleDbType.Varchar2).Value = description;
            cmd.Parameters.Add("assettype", OracleDbType.Varchar2).Value = assettype;
            cmd.Parameters.Add("model", OracleDbType.Varchar2).Value = txtModel.Text;
            cmd.Parameters.Add("dateacquired", OracleDbType.Date).Value = txtDateA.Text;
            cmd.Parameters.Add("purchaseprice", OracleDbType.Double).Value = txtPrice.Text;
            cmd.Parameters.Add("nextschedulemaintenace", OracleDbType.Date).Value = txtMainDate.Text;
            cmd.Parameters.Add("assetstatus", OracleDbType.Varchar2).Value = txtStatus.Text;

            cmd.ExecuteNonQuery();

            lblInfo.Text = "Asset Added";
        }
        catch (Exception err)
        {
            // Handle an error by displaying the information.
            lblInfo.Text = "Error reading the database. " + err.Message;
        }
        finally
        {
            // calling Close() won't cause an error.
            con.Close();
            txtModel.Text = "";
            txtDateA.Text = "";
            txtPrice.Text = "";
            txtMainDate.Text = "";
            txtStatus.Text = "";
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtDateA.Text = Calendar1.SelectedDate.ToString("dd-MMM-yy");
        Calendar1.Visible = false;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        txtMainDate.Text = Calendar2.SelectedDate.ToString("dd-MMM-yy");
        Calendar2.Visible = false;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        Calendar2.Visible = true;
    }
}