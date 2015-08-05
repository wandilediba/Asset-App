<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="_Default" %>

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
              <li><a href="Default.aspx">Create Report</a></li>
              <li><a href="ShowRecords.aspx "class="list-group-item"></a></li>
              <li class="nav-header">Department Reports</li>
              <li><a href="Crud.aspx">Assert Report</a></li>
              <li><a href="#">Total Assets</a></li>
            </ul>
          </div>
        </div>
      </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h2>Print Reports</h2>
</asp:Content>

