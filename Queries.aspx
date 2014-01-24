<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="queries.aspx.cs" Inherits="Acme.queries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>
        Customer Queries:</h1>
    <p>
        Enter your query here:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSQL" runat="server" Height="28px" Width="933px"></asp:TextBox>
    </p>
    <p style="margin-left: 40px">
        <asp:Button ID="btnExecuteQuery" runat="server" OnClick="btnExecuteQuery_Click" Text="Execute Query"
            Width="109px" />
        &nbsp;</p>
    <p style="margin-left: 40px">
        <asp:GridView ID="gvCustomer" runat="server">
        </asp:GridView>
    </p>
    <p style="margin-left: 40px">
        <asp:Label ID="lblQueriesPage" runat="server" Text="Label"></asp:Label>
    </p>
    <p style="margin-left: 920px">
        &nbsp;</p>
    <p style="margin-left: 920px">
        &nbsp;</p>
    <p style="margin-left: 920px">
        &nbsp;</p>
</asp:Content>
