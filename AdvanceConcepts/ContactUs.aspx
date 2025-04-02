<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="AdvanceConcepts.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>Contact Us Page</p>
    <p>&nbsp;</p>
    <form id="btn" runat="server">

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" />
        <p>&nbsp;</p>

        Name<asp:TextBox ID="NameTextBox" runat="server" Style="margin-left: 21px" Width="291px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="SignUpGroup" ControlToValidate="NameTextBox" ErrorMessage="Name is Required" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="SignUpGroup" ControlToValidate="NameTextBox" Display="Dynamic" ErrorMessage="Invalid Name" SetFocusOnError="True" ValidationExpression="^[A-Za-z]+(?: [A-Za-z]+)*$"></asp:RegularExpressionValidator>
        <br />
        Age<asp:TextBox ID="AgeTextBox" runat="server" Style="margin-left: 21px" Width="291px" OnPreRender="Age_PreRender"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="SignUpGroup" ControlToValidate="AgeTextBox" ErrorMessage="Age is Required" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationGroup="SignUpGroup" ControlToValidate="AgeTextBox" Display="Dynamic" ErrorMessage="Invalid Age" ValidationExpression="^(?:[1-9]|[1-9][0-9]|1[0-1][0-9]|120)$"></asp:RegularExpressionValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="AgeTextBox" ValidationGroup="SignUpGroup" Display="Dynamic" ErrorMessage="Age must be greater than 19 and smaller than 120" MaximumValue="120" MinimumValue="18" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
        <br />
        Gender
        <asp:RadioButton ID="MaleRadioBtn" runat="server" GroupName="Gender" Text="Male" />
        <asp:RadioButton ID="FemaleRadioBtn" runat="server" GroupName="Gender" Text="Female" />
        <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ValidationGroup="SignUpGroup" ErrorMessage="Please Select Gender" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
        <br />
        <br />
        <br />
        <br />
        Email<asp:TextBox ID="EmailTextBox" runat="server" Style="margin-left: 21px" Width="291px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="SignUpGroup" ControlToValidate="EmailTextBox" ErrorMessage="Email is Required" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ValidationGroup="SignUpGroup" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        Password
        <asp:TextBox ID="PasswordTextBox" runat="server" Width="188px"></asp:TextBox>
        <br />
        Confirm Password<asp:TextBox ID="ConfirmPassword" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator" runat="server" ControlToCompare="PasswordTextBox" ValidationGroup="SignUpGroup" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="Password Didn't Matched"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ConfirmPassword" ValidationGroup="SignUpGroup" Display="Dynamic" ErrorMessage="Confirm Password Cannot be Empty"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="SignUpBtn" runat="server" Height="50px" OnClick="Button1_Click1" ValidationGroup="SignUpGroup" Style="margin-left: 67px; margin-top: 5px" Text="SignUp" Width="184px" />

        <asp:Button ID="RestoreBtn" runat="server" OnClick="RestoreBtn_Click1" Style="margin-left: 62px; margin-right: 55px; margin-top: 0px" Text="Restore Data" Width="174px" />
        <asp:Button ID="btnRestore" runat="server" type="button" CausesValidation="false" OnClick="btnRestore_Click" Style="margin-left: 62px; margin-right: 55px; margin-top: 0px" Text="Restore Data" Width="174px" />
    </form>

</asp:Content>
