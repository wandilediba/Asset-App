<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="DeleteRecords.aspx.cs" Inherits="ShowRecords" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h2>
        Edit/Delete</h2>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="EMPLOYEEID" onrowcommand="GridView1_RowCommand2" 
    Width="341px">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbEdit" CommandArgument='<%# Eval("employeeid") %>' CommandName="EditRow"
                             runat="server">Edit</asp:LinkButton>
                        <asp:LinkButton ID="lbDelete" CommandArgument='<%# Eval("employeeid") %>' CommandName="DeleteRow"
                            runat="server">Delete</asp:LinkButton>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:LinkButton ID="lbUpdate" CommandArgument='<%# Eval("employeeid") %>' CommandName="UpdateRow"
                             runat="server">Update</asp:LinkButton>
                        <asp:LinkButton ID="lbCancel" CommandArgument='<%# Eval("employeeid") %>' CommandName="CancelUpdate"
                            runat="server">Cancel</asp:LinkButton>
                    </EditItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="FIRSTNAME" SortExpression="FIRSTNAME">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FIRSTNAME") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditName" runat="server" ErrorMessage="Is a Required Field"
                            ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("FIRSTNAME") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="LASTNAME" SortExpression="LASTNAME">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LASTNAME") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditLastName" runat="server" ErrorMessage="Surname Is a Required Field"
                            ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("LASTNAME") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EMAIL" SortExpression="EMAIL">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("EMAIL") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditEmail" runat="server" ErrorMessage="Email Is a Required Field"
                            ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("EMAIL") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PHONENUMBER" SortExpression="PHONENUMBER">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("PHONENUMBER") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditPhone" runat="server" ErrorMessage="Phone Number Is a Required Field"
                            ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("PHONENUMBER") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" 
    runat="server" Width="599px" />
        <p>
            <asp:Label ID="lblInfo" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="DATA SOURCE=wux:1521/XE;PASSWORD=SYSTEM;PERSIST SECURITY INFO=True;USER ID=SYSTEM"
                ProviderName="Oracle.DataAccess.Client" SelectCommand="select  employeeid, firstname, lastname, email, phonenumber
 from employeess;" UpdateCommand="update employeess
set firstname = firstname,
      lastname = lastname,
      email = email,
     phonenumber = phonenumber
     where employeeid = employeeid;"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
</asp:Content>
