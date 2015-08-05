<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddAssert.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
   
    <style type="text/css">
        .style1
        {
            width: 327px;
        }
        .style2
        {
            width: 245px;
        }
    </style>
    
   
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h2>Add Asset</h2>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    <table >
        <tr>
            <td class="style10">
                Department Name:</td>
            <td class="style2">
    <asp:DropDownList ID="DropDownList2" runat="server" 
        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
    </asp:DropDownList>
                <br />
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Category ID:
            </td>
            <td class="style2">
              <asp:DropDownList ID="DropDownList1" runat="server" 
        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
    </asp:DropDownList></td>
            <td class="style7">
            </td>
        </tr>
        <tr>
            <td class="style10">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" CssClass="style1" Text="Employee ID"></asp:Label>
                :</td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="#000066"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" CssClass="style1" Text="Description: "></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label5" runat="server" CssClass="style1" 
        Text="Assert Type:"></asp:Label>
            </td>
            <td class="style2">
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="#000066"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td
        </tr>
    </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="btnCancel" runat="server" Text="Cancel" class="btn-primary" 
            Height="35px" Width="144px"/>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnNext" runat="server"
        onclick="btnNext_Click" Text="Next" Width="144px" class="btn-primary" 
            Height="35px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        <br />
    </p>
    <p>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </p>
    </asp:Content>

<asp:Content ID="Content4" runat="server"  contentplaceholderid="ContentPlaceHolder1">
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


