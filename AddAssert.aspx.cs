using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{
    static string cnString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
    OracleConnection con = new OracleConnection(cnString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Cat();
        Deptname();
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        Session["department_name"] = DropDownList2.SelectedValue;
        Session["category_id"] = DropDownList1.SelectedValue;
        Session["employee_id"] = TextBox1.Text;
        Session["description"] = TextBox2.Text;
        Session["assettype"] = TextBox3.Text;

        Server.Transfer("Addasset22.aspx");
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Deptname();
       
    }

    protected void Deptname(){


        OracleCommand cmd = new OracleCommand();
        cmd.Connection = con;

        cmd.CommandText = "SELECT DEPARTMENT_NAME FROM DEPARTMENTT";
        con.Open();
        OracleDataReader rd = cmd.ExecuteReader();

        while (rd.Read())
        {
            DropDownList2.Items.Add(rd["DEPARTMENT_NAME"].ToString());
        }
        con.Close();
        
   }
    protected void Cat()
    {
        OracleCommand cmd = new OracleCommand();
        cmd.Connection = con;

        cmd.CommandText = "SELECT CATEGORY_ID FROM asset_category";
        con.Open();
        OracleDataReader rd = cmd.ExecuteReader();

        while (rd.Read())
        {
            DropDownList1.Items.Add(rd["CATEGORY_ID"].ToString());
        }
        con.Close();

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
}