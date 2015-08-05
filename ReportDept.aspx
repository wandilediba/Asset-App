<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ReportDept.aspx.cs" Inherits="ReportDept" %>

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
              <li><a href="DeleteRecords.aspx "class="list-group-item"></a></li>
              <li class="nav-header">Department Reports</li>
              <li><a href="Crud.aspx">Assert Report</a></li>
              <li><a href="#">Total Assets</a></li>
            </ul>
          </div>
        </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h2>Print Report</h2>
    <br />
    &nbsp;&nbsp;
    Click the button below to print the Asset Report for :<h3>&nbsp;&nbsp; Human Resource Department</h3>
    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp;
    <asp:Button ID="Button1" runat="server" Height="80px" onclick="Button1_Click" 
        Text="Print" Width="209px" class="btn-primary" />
    <br />
<br />
<br />
<br />
    &nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server"></asp:Label>
</asp:Content>

