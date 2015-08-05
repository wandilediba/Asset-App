<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Addasset22.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 101%;
            height: 437px;
        }
        .style2
        {
            width: 233px;
        }
        .style3
        {
            width: 159px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
      <div class="row-fluid">
         <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Asset</li>
              <li><a href="AddAssert.aspx"class="list-group-item">Assign Assert</a></li>
              <li><a href="DeleteRecords.aspx"></a></li>
              <li class="nav-header">Users</li>
              <li><a href="AddUser.aspx "class="list-group-item">Add User</a></li>
              <li><a href="Admin.aspx "class="list-group-item">Edit Employee</a></li>
              <li class="nav-header">Maintenance</li>
              <li><a href="Maintenance.aspx"class="list-group-item">Book For Maintenance</a></li>
            </ul>
          </div>
        </div>
      </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h2>Add Asset</h2>
    <p>&nbsp;</p>
    <table class="style1">
        <tr>
            <td class="style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Model" style="font-weight: 700"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtModel" runat="server"></asp:TextBox>
            </td>
            <td class="span1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Date Aquared" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtDateA" runat="server"></asp:TextBox>
            </td>
            <td class="span1">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/calendar1.gif" 
                    onclick="ImageButton2_Click" />
            </td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server" Visible="False" Width="100px" 
                    onselectionchanged="Calendar1_SelectionChanged">
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Purchase Price" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            </td>
            <td class="span1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Maintenence Date" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtMainDate" runat="server"></asp:TextBox>
            </td>
            <td class="span1">
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/calendar1.gif" 
                    onclick="ImageButton3_Click" />
            </td>
            <td>
                <asp:Calendar ID="Calendar2" runat="server" Visible="False" Width="100px" 
                    onselectionchanged="Calendar2_SelectionChanged">
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                    ID="Label5" runat="server" Text="Status" style="font-weight: 700"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
            </td>
            <td class="span1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style2">
                &nbsp;</td>
            <td class="span1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="span1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="35px" Text="Cancel" 
            Width="144px" class="btn-primary" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="35px" Text="Add" 
            Width="144px" class="btn-primary" onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>
        <asp:Label ID="lblInfo" runat="server" ForeColor="Navy"></asp:Label>
    </p>
    <br />
    <p>&nbsp;</p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

