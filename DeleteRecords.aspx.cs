using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using Oracle.DataAccess.Client;

public partial class ShowRecords : System.Web.UI.Page
{
    static string cnString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
    OracleConnection con = new OracleConnection(cnString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            //Binding the GridView
            try
            {
                BindGridViewShowRecords();
            }
            catch (Exception ex)
            {
                lblInfo.Text = ex.Message.ToString();
            }
        }
    }

    private void BindGridViewShowRecords()
    {

        //Setting the DataSource of GridView

        GridView1.DataSource = GridShowRecordsDataSource();

        GridView1.DataBind();

    }

    private DataTable GridShowRecordsDataSource()
    {

        //Creating object of BAL

        RecordBAL rBAL = new RecordBAL();

        DataTable dTable = new DataTable();

        try
        {
            //Getting the DataSource for GridView from BAL Using BAL object
            dTable = rBAL.RetrieveRecords();
        }

        catch (Exception ex)
        {
            lblInfo.Text = ex.Message.ToString();
        }

        finally
        {
            rBAL = null;
        }

        return dTable;
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void GridViewShowRecords_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {


    }
    protected void GridView1_RowCommand2(object sender, GridViewCommandEventArgs e)
    {
        RecordBAL rBA = new RecordBAL();
        if (e.CommandName == "EditRow")
        {
            int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
            GridView1.EditIndex = rowIndex;
            BindGridViewShowRecords();
        }
        else if (e.CommandName == "DeleteRow")
        {
            try
            {
                rBA.DeleteEmployee(Convert.ToInt32(e.CommandArgument));
                BindGridViewShowRecords();
            }
            catch (Exception ex)
            {
                lblInfo.Text = ex.Message.ToString();
            }
        }
        else if (e.CommandName == "CancelUpdate")
        {
            GridView1.EditIndex = -1;
            BindGridViewShowRecords();
        }
        else if (e.CommandName == "UpdateRow")
        {
            try
            {
                int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;

                int employeeid = Convert.ToInt32(e.CommandArgument);
                string firstname = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox1")).Text;
                string lastname = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox2")).Text;
                string email = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox3")).Text;
                Int32 phonenumber = Convert.ToInt32(((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox4")).Text);

                rBA.UpdateRecord_BAL(employeeid, firstname, lastname, email, phonenumber);

                GridView1.EditIndex = -1;
                BindGridViewShowRecords();
            }
            catch (Exception ex)
            {
                lblInfo.Text = ex.Message.ToString();
            }
        }
    }
}