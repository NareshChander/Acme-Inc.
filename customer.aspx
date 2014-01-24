<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="customer.aspx.cs" Inherits="Acme.customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>
        Customer Details</h1>
    Customer ID&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtCustID" runat="server" Width="250px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtCustID"
        ErrorMessage="Please enter a customer ID.">*</asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtCustID"
        ErrorMessage="Customer ID must be between 1 and 1000." MaximumValue="1000" MinimumValue="1"
        Type="Integer">*</asp:RangeValidator>
    <br />
    First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtFirstName" runat="server" MaxLength="30" Width="246px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName"
        ErrorMessage="Please enter First name.">*</asp:RequiredFieldValidator>
    <br />
    Surname&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtSurname" runat="server" MaxLength="30" Width="246px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSurname"
        ErrorMessage="Please enter Surname">*</asp:RequiredFieldValidator>
    <br />
    Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtGender" runat="server" Width="244px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtGender"
        ErrorMessage="Please enter a gender">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtGender"
        ErrorMessage="Please enter 'Male' or 'Female'" ValidationExpression="male|MALE|Male|female|FEMALE|Female">*</asp:RegularExpressionValidator>
    <br />
    Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtAge" runat="server" Width="244px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtAge"
        ErrorMessage="Please enter an age.">*</asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge"
        ErrorMessage="You must be between 18 and 120 years of age to join this site."
        MaximumValue="120" MinimumValue="18" Type="Integer">*</asp:RangeValidator>
    <br />
    Address1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtAddress1" runat="server" Width="244px" MaxLength="50"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddress1"
        ErrorMessage="Please enter Address">*</asp:RequiredFieldValidator>
    <br />
    Address2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtAddress2" runat="server" Width="245px" MaxLength="50"></asp:TextBox>
    <br />
    City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtCity" runat="server" Width="244px" MaxLength="50"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCity"
        ErrorMessage="Please enter City">*</asp:RequiredFieldValidator>
    <br />
    Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPhone" runat="server" Width="243px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"
        ControlToValidate="txtPhone" ErrorMessage="Please enter a phone number">*</asp:RequiredFieldValidator>
    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
        ControlToValidate="txtPhone" ErrorMessage="Not a valid australian phone number."
        ValidationExpression="^\({0,1}((0|\+61)(2|4|3|7|8)){0,1}\){0,1}(\|-){0,1}[0-9]{2}(\|-){0,1}[0-9]{2}(\|-){0,1}[0-9]{1}(\|-){0,1}[0-9]{3}$">*</asp:RegularExpressionValidator>
    <br />
    Mobile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtMobile" runat="server" Width="243px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtMobile"
        ErrorMessage="Not a valid australian phone number." ValidationExpression="^\({0,1}((0|\+61)(2|4|3|7|8)){0,1}\){0,1}(\|-){0,1}[0-9]{2}(\|-){0,1}[0-9]{2}(\|-){0,1}[0-9]{1}(\|-){0,1}[0-9]{3}$">*</asp:RegularExpressionValidator>
    <br />
    Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtEmail" runat="server" Width="242px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtEmail"
        ErrorMessage="Please enter an email address.">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
        ErrorMessage="Not a valid email address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    <br />
    Confirm Email&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtConfirmEmail" runat="server" Width="238px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtConfirmEmail"
        ErrorMessage="Please confirm the email address.">*</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEmail"
        ControlToValidate="txtConfirmEmail" ErrorMessage="Email addesses do not match.">*</asp:CompareValidator>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnNewCust" runat="server" Text="New" OnClick="btnNewCust_Click"
        ValidationGroup="Group1" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnaddCust" runat="server" Text="Add" OnClick="btnaddCust_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnRetrieveCust" runat="server" Text="Retrieve" OnClick="btnRetrieveCust_Click"
        ValidationGroup="Group1" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnUpdateCust" runat="server" Text="Update" OnClick="btnUpdateCust_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnDeleteCust" runat="server" Text="Delete" OnClick="btnDeleteCust_Click"
        ValidationGroup="Group1" />
    <br />
    <br />
    <asp:Label ID="lblCustomerPage" runat="server"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="Small" HeaderText="You recieved the following errors: "
        Style="margin-left: 498px" />
</asp:Content>
