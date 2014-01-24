<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="index.aspx.cs" Inherits="Acme.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5
        {
            font-family: "Default font";
        }
        .style6
        {
            width: 100%;
        }
        .style7
        {
            width: 628px;
        }
        .style8
        {
            width: 628px;
            text-align: justify;
            font-family: "Default font";
        }
    </style>
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>
        Home Page&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlSetTheme" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSetTheme_SelectedIndexChanged">
            <asp:ListItem>Gray</asp:ListItem>
            <asp:ListItem>Blue</asp:ListItem>
            <asp:ListItem>Green</asp:ListItem>
        </asp:DropDownList>
    </h1>
    <table class="style6">
        <tr>
            <td class="style7">
                Welcome to my companys home page. The Acme Inc. Pvt. Ltd. World Headquarters sits
                on 1,400 acres of beautifully kept land. The building includes offices for over
                900 employees, as well as a display floor and a 350-seat auditorium. You can visit
                the display floor any day of the year, from 9 a.m. to 5 p.m. Look over the displays
                of antique Acme products, and get up close and personal with a variety of the company&#39;s
                newest equipment offerings. You’ll also find a selection of product literature to
                take with you. The display floor also features a one-of-a kind work of art. A three-dimensional
                mural by Alexander Girard contains 2,200 authentic pieces of memorabilia dating
                from 1837 to 1918, spanning the company&#39;s first 75 years. The Acme World Headquarters
                is located at 1 Acme Place in Melbourne, Australia 3000. It&#39;s approximately
                3.5 miles east of the intersection of Interstate highway 74 and 76. Our company
                headquarters is shown below.&nbsp;&nbsp;<br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style7">
                <img alt="" class="style3" src="Images/HeadQuarters.jpg" style="height: 427px; width: 70%;
                    margin-left: 98px" align="middle" border="5" /><br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style7">
                For more information, email: <a href="mailto:acme@acme.com">acme@acme.com</a> or
                phone Acme Guest Services at (03) 9999 9999.
            </td>
        </tr>
    </table>
    <p>
        <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
