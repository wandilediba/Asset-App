using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using System.Web.Configuration;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;

public partial class _Default : System.Web.UI.Page
{
    static string cnString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
    OracleConnection con = new OracleConnection(cnString);
    protected void Page_Load(object sender, EventArgs e)
    {
        PopulateDropDownListWithColumnNames();

    }
   

    protected void PopulateDropDownListWithColumnNames()
    {
        foreach (BoundField col in GridView1.Columns)
        {
            DropDownList1.Items.Add(new System.Web.UI.WebControls.ListItem(col.HeaderText, col.HeaderText));
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string FilterExpression = string.Concat(DropDownList1.SelectedValue, " LIKE '%{0}%'");

        //clear the parameters
        SqlDataSource1.FilterParameters.Clear();
        // Int32 dept = Convert.ToInt32(txtDeptName.Text);
        
        //Add control parameter for use with filter
        SqlDataSource1.FilterParameters.Add(new ControlParameter(DropDownList1.SelectedValue, "txtDeptName", "Text"));


        //Assign the filter expression to the FilterExpression property of the sqlDataSource
        //By doing the filtering at this point, you are actually filtering AFTER all the data has been 
        //retrieved from the database. 
        SqlDataSource1.FilterExpression = FilterExpression;

        GridView1.Visible = true;
        Button2.Visible = true;
        Button3.Visible = true;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         int columnsCount = GridView1.HeaderRow.Cells.Count;
    // Create the PDF Table specifying the number of columns
    PdfPTable pdfTable = new PdfPTable(columnsCount);

    // Loop thru each cell in GrdiView header row
    foreach(TableCell gridViewHeaderCell in GridView1.HeaderRow.Cells)
    {
        // Create the Font Object for PDF document
        Font font = new Font();
        // Set the font color to GridView header row font color
        font.Color = new BaseColor(GridView1.HeaderStyle.ForeColor);

        // Create the PDF cell, specifying the text and font
        PdfPCell pdfCell = new PdfPCell(new Phrase(gridViewHeaderCell.Text, font));

        // Set the PDF cell backgroundcolor to GridView header row BackgroundColor color
        pdfCell.BackgroundColor = new BaseColor(GridView1.HeaderStyle.BackColor);

        // Add the cell to PDF table
        pdfTable.AddCell(pdfCell);
    }

    // Loop thru each datarow in GrdiView
    foreach (GridViewRow gridViewRow in GridView1.Rows)
    {
        if (gridViewRow.RowType == DataControlRowType.DataRow)
        {
            // Loop thru each cell in GrdiView data row
            foreach (TableCell gridViewCell in gridViewRow.Cells)
            {
                Font font = new Font();
                font.Color = new BaseColor(GridView1.RowStyle.ForeColor);

                PdfPCell pdfCell = new PdfPCell(new Phrase(gridViewCell.Text, font));

                pdfCell.BackgroundColor = new BaseColor(GridView1.RowStyle.BackColor);

                pdfTable.AddCell(pdfCell);
            }
        }
    }

    // Create the PDF document specifying page size and margins
    Document pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
    
    PdfWriter.GetInstance(pdfDocument, Response.OutputStream);

    pdfDocument.Open();
    pdfDocument.Add(pdfTable);
    pdfDocument.Close();

    Response.ContentType = "application/pdf";
    Response.AppendHeader("content-disposition", 
        "attachment;filename=Employees.pdf");
    Response.Write(pdfDocument);
    Response.Flush();
    Response.End();
   }
    protected void Button3_Click(object sender, EventArgs e)
    {
        // Clear all content output from the buffer stream
        Response.ClearContent();
        // Specify the default file name using "content-disposition" RESPONSE header
        Response.AppendHeader("content-disposition", "attachment; filename=Employees.xls");
        // Set excel as the HTTP MIME type
        Response.ContentType = "application/excel";
        // Create an instance of stringWriter for writing information to a string
        System.IO.StringWriter stringWriter = new System.IO.StringWriter();
        // Create an instance of HtmlTextWriter class for writing markup 
        // characters and text to an ASP.NET server control output stream
        HtmlTextWriter htw = new HtmlTextWriter(stringWriter);

        // Set white color as the background color for gridview header row
        GridView1.HeaderRow.Style.Add("background-color", "#FFFFFF");

        // Set background color of each cell of GridView1 header row
        foreach (TableCell tableCell in GridView1.HeaderRow.Cells)
        {
            tableCell.Style["background-color"] = "#A55129";
        }

        // Set background color of each cell of each data row of GridView1
        foreach (GridViewRow gridViewRow in GridView1.Rows)
        {
            gridViewRow.BackColor = System.Drawing.Color.White;
            foreach (TableCell gridViewRowTableCell in gridViewRow.Cells)
            {
                gridViewRowTableCell.Style["background-color"] = "#FFF7E7";
            }
        }

        GridView1.RenderControl(htw);
        Response.Write(stringWriter.ToString());
        Response.End();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
    }
}
