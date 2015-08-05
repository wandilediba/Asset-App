using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;
using System.Data;
using iTextSharp.text.pdf;
using iTextSharp.text;
using System.IO;

public partial class ReportDept : System.Web.UI.Page
{
    static string cnString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
    OracleConnection CON = new OracleConnection(cnString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public System.Data.DataTable PDFGetData()
    {
        string sql = "SELECT * FROM ASSETS where department_name = 'Human Resource'";
        OracleDataAdapter adapter = new OracleDataAdapter(sql, CON);
        DataSet myDataSet = new DataSet();
        try
        {
            adapter.Fill(myDataSet, "newAssets");
        }
        catch (Exception ex)
        {
           
        }
        return myDataSet.Tables[0];

    }
    public void printSlip()
    {

        // executeCalc_Cost();

        //updateDestination();

        DateTime date1 = DateTime.Today;
        string printDate = date1.ToString("dd/M/yyyy");

        DateTime date = DateTime.Today;
        PdfPTable PdfTable;
        PdfPCell PdfPCell = null;
        Document doc = new Document(iTextSharp.text.PageSize.A4, 10, 10, 50, 60);



        try
        {
            string pdfFilePath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Desktop), "DEPT REPORT.pdf");
            iTextSharp.text.Font font8 = FontFactory.GetFont("arial", 7);
            iTextSharp.text.Font font4 = FontFactory.GetFont("arial", 7);
            PdfWriter wri = PdfWriter.GetInstance(doc, new FileStream(pdfFilePath, FileMode.Create));
            doc.Open();
            Paragraph border = new Paragraph("____________________________________________________________________________");
            Paragraph paragraph = new Paragraph(new Phrase(new Chunk(" Asset Report for Human Resource Deaprtment")));
            Paragraph paragraph1 = new Paragraph(new Phrase(new Chunk("Printed On    :  " + printDate)));
            Paragraph paragraph7 = new Paragraph(new Phrase(new Chunk("  ", font8)));
            Paragraph paragraph8 = new Paragraph(new Phrase(new Chunk("  ", font8)));
            Paragraph paragraph10 = new Paragraph(new Phrase(new Chunk(" " + "")));
            Paragraph paragraph5 = new Paragraph(new Phrase(new Chunk("Approved by: _________________________ ")));
            paragraph.Alignment = Element.ALIGN_CENTER;
            paragraph1.Alignment = Element.ALIGN_CENTER;
            paragraph5.Alignment = Element.ALIGN_RIGHT;
            paragraph10.Alignment = Element.ALIGN_RIGHT;

            PdfTable = new PdfPTable(9);
            PdfTable.WidthPercentage = 100;

            DataTable dt = PDFGetData();
            PdfTable = new PdfPTable(dt.Columns.Count);

            PdfPCell = new PdfPCell(new Phrase(new Chunk("Asset ID", font8)));
            PdfTable.AddCell(PdfPCell);
            PdfPCell = new PdfPCell(new Phrase(new Chunk("Department ID", font8)));
            PdfTable.AddCell(PdfPCell);
            PdfPCell = new PdfPCell(new Phrase(new Chunk("Catedory ID", font8)));
            PdfTable.AddCell(PdfPCell);
            PdfPCell = new PdfPCell(new Phrase(new Chunk("Emplyee ID", font8)));
            PdfTable.AddCell(PdfPCell);
            PdfPCell = new PdfPCell(new Phrase(new Chunk("Description", font8)));
            PdfTable.AddCell(PdfPCell);
            PdfPCell = new PdfPCell(new Phrase(new Chunk("Type", font8)));
            PdfTable.AddCell(PdfPCell);
            PdfPCell = new PdfPCell(new Phrase(new Chunk("Model", font8)));
            PdfTable.AddCell(PdfPCell);
            PdfPCell = new PdfPCell(new Phrase(new Chunk("Date Acquired", font8)));
            PdfTable.AddCell(PdfPCell);
            PdfPCell = new PdfPCell(new Phrase(new Chunk("Price", font8)));
            PdfTable.AddCell(PdfPCell);
            PdfPCell = new PdfPCell(new Phrase(new Chunk("Maintenance Date", font8)));
            PdfTable.AddCell(PdfPCell);
            PdfPCell = new PdfPCell(new Phrase(new Chunk("Status", font8)));
            PdfTable.AddCell(PdfPCell);



            for (int rows = 0; rows < dt.Rows.Count; rows++)
            {
                for (int column = 0; column < dt.Columns.Count; column++)
                {
                    PdfPCell = new PdfPCell(new Phrase(new Chunk(dt.Rows[rows][column].ToString(), font8)));
                    PdfTable.AddCell(PdfPCell);

                }
            }


            PdfTable.SpacingBefore = 0f;
            float[] widths = new float[] { 18f, 15f, 18f, 20f, 15f, 20f, 18f, 15f, 15f, 15f, 15f };
            PdfTable.SetWidths(widths);


            PdfTable.SpacingBefore = 11f;
            doc.Add(paragraph);
            doc.Add(paragraph1);
            doc.Add(paragraph7);
            doc.Add(paragraph8);

            doc.Add(PdfTable);

            doc.Add(paragraph7);
            doc.Add(paragraph8);
            doc.Add(paragraph5);
            doc.Add(paragraph10);

            doc.Close();
            System.Diagnostics.Process.Start(pdfFilePath);
        }
        catch (Exception exc)
        {
            Label1.Text = "Error reading the database. " + exc.Message;
        }
    }//end method
    protected void Button1_Click(object sender, EventArgs e)
    {
        printSlip();
    }
}