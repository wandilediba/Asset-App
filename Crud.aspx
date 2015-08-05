<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Crud.aspx.cs" Inherits="Crud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h2>Delete/ Update Asset</h2>
<p>&nbsp;</p>
<p>
    <asp:Label ID="Label1" runat="server" Text="Asset ID: " ToolTip=" "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtAssetID" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Button ID="Button1" runat="server" Height="39px" onclick="Button1_Click" 
        Text="Search" Width="106px" />
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="DATA SOURCE=wux:1521/XE;USER ID=SYSTEM" 
        ProviderName="Oracle.DataAccess.Client" SelectCommand="SELECT * FROM ASSETS;"></asp:SqlDataSource>
    <asp:DataGrid ID="DataGrid1" runat="server" DataSourceID="SqlDataSource1" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingItemStyle BackColor="White" />
        <Columns>
            <asp:EditCommandColumn ButtonType="PushButton" CancelText="Cancel" 
                EditText="Edit" UpdateText="Update"></asp:EditCommandColumn>
            <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" Text="Delete">
            </asp:ButtonColumn>
        </Columns>
        <EditItemStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataGrid>
</p>
</asp:Content>

