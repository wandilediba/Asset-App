<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddAssert2.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
 
    
    
    
 
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h2> Add Asset</h2>
    <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    <table >
        <tr>
            <td class="style1" >
        <asp:Label ID="Label1" runat="server" Text="Model: "></asp:Label>
            </td>
            <td >
        <asp:TextBox ID="txtModel" runat="server"></asp:TextBox>
                <br />
            </td>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" >
                Date Aquired:</td>
            <td >
        <asp:TextBox ID="txtDateA" runat="server"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/calendar1.gif" 
            onclick="ImageButton1_Click1" />
            </td>
            <td >
        <asp:Calendar ID="Calendar1" runat="server" 
            onselectionchanged="Calendar1_SelectionChanged1" Visible="False" 
                    ViewStateMode="Disabled"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style1" >
        <asp:Label ID="Label2" runat="server" Text="Purchase Price:"></asp:Label>
            </td>
            <td>
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            </td>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" >
                Maintenance Date:</td>
            <td >
        <asp:TextBox ID="txtMainDate" runat="server"></asp:TextBox>
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/calendar1.gif" 
            onclick="ImageButton2_Click" Height="19px" />
            </td>
            <td >
        <asp:Calendar ID="Calendar2" runat="server" 
            onselectionchanged="Calendar2_SelectionChanged1" ViewStateMode="Enabled" 
                    Visible="False"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style1" >
                Status:</td>
            <td >
        <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
            </td>
            <td >
                &nbsp;</td>
        </tr>
    </table>
    <p> 
      
        <asp:Button ID="Button2" runat="server" Text="Cancel" class="btn-large" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Add Assert"  
            onclick="btnSubmit_Click" class="btn-large" />
</p>
    <p> 
        &nbsp;</p>
    <p> 
        <asp:Label ID="lblInfo" runat="server"></asp:Label>
    </p>
    <p> 
        &nbsp;</p>
</asp:Content>

