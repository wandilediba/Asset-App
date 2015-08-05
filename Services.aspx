<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    Services
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
      <div class="row-fluid">
         <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Asset</li>
              <li><a href="AddAssert.aspx"class="list-group-item">Assign Assert</a></li>
              <li><a href="#">Edit/Delete Asset</a></li>
              <li class="nav-header">Users</li>
              <li><a href="AddUser.aspx "class="list-group-item">Add User</a></li>
              <li><a href="Adminstrator.aspx "class="list-group-item">Edit/Delete Employee</a></li>
              <li class="nav-header">Maintenance</li>
              <li><a href="Maintenance.aspx"class="list-group-item">Book For Maintenance</a></li>
            </ul>
          </div>
        </div>
      </div>

     
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h2>Services</h2>
<p>&nbsp;</p>

    <h5><---- Use the side menu to manage services</h5>
    <p>&nbsp;</p>
    <br />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <img src="AddDelete.jpg" />
    <br />
<br />
<br />
    <br />

    
</asp:Content>

