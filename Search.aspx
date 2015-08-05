<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
      <div class="row-fluid">
         <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header"> PDF Report</li>
              <li><a href="ReportDept.aspx">HR Report</a></li>
              <li class="nav-header">Asset Report</li>
              <li><a href="Default.aspx">Search for asset</a></li>
              <li class="nav-header">Department Reports</li>
              <li><a href="Crud.aspx">Assert Report</a></li>
              <li><a href="#">Total Assets</a></li>
            </ul>
          </div>
        </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h2>Edit?Delete Asset</h2>
    <p>&nbsp;</p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Filter By"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:DropDownList ID="DropDownList1" runat="server">
</asp:DropDownList>

    </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label2" runat="server" Text="Enter string: "></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;
<asp:TextBox ID="txtDeptName" runat="server"></asp:TextBox>
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
    Text="Search" class="btn-primary" />
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="ASSERT_ID" DataSourceID="SqlDataSource1" Visible="False" 
        Width="257px">
    <Columns>
        <asp:BoundField DataField="ASSERT_ID" HeaderText="ASSERT ID" ReadOnly="True" 
            SortExpression="ASSERT_ID" />
        <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" 
            SortExpression="DEPARTMENT_NAME" />
        <asp:BoundField DataField="CATEGORY_ID" HeaderText="CATEGORY_ID" 
            SortExpression="CATEGORY_ID" />
        <asp:BoundField DataField="EMPLOYEE_ID" HeaderText="EMPLOYEE_ID" 
            SortExpression="EMPLOYEE_ID" />
        <asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" 
            SortExpression="DESCRIPTION" />
        <asp:BoundField DataField="ASSETTYPE" HeaderText="ASSETTYPE" 
            SortExpression="ASSETTYPE" />
        <asp:BoundField DataField="MODEL" HeaderText="MODEL" SortExpression="MODEL" />
        <asp:BoundField DataField="DATEACQUIRED" HeaderText="DATEACQUIRED" 
            SortExpression="DATEACQUIRED" />
        <asp:BoundField DataField="PURCHASEPRICE" HeaderText="PURCHASEPRICE" 
            SortExpression="PURCHASEPRICE" />
        <asp:BoundField DataField="NEXTSCHEDULEMAINTENACE" 
            HeaderText="MAINTENACE DUE" SortExpression="NEXTSCHEDULEMAINTENACE" />
        <asp:BoundField DataField="ASSETSTATUS" HeaderText="ASSETSTATUS" 
            SortExpression="ASSETSTATUS" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="DATA SOURCE=wux:1521/XE;PASSWORD=SYSTEM;USER ID=SYSTEM" 
    ProviderName="Oracle.DataAccess.Client" SelectCommand="SELECT * FROM ASSETS;">
</asp:SqlDataSource>
    <br />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="Export to PDF" class="btn-primary" Visible="False" />
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        Text="Export To Excel" class="btn-primary" Visible="False" />
    <br />
<br />
<br />
    
</asp:Content>

