<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="AdvanceConcepts.WebForm2" %>

<!DOCTYPE html>
<script runat="server">



    protected void LogoutBtn_Click(object sender, EventArgs e)
        {
        if (Session["name"] != null)
            {
            Session["name"] = null;
            Response.Redirect("ContactUs.aspx");
            }
        }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="NameBox" runat="server" Style="margin-left: 22px" Width="237px"></asp:TextBox>
            <br />
            <asp:Label runat="server" Text="Age"></asp:Label>
            <asp:TextBox ID="AgeBox" runat="server" Style="margin-left: 22px" Width="237px"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="EmailBox" runat="server" Style="margin-left: 22px" Width="237px" OnTextChanged="EmailBox_TextChanged"></asp:TextBox>
            <br />
        </div>
        <p>
            <asp:Button ID="LogoutBtn" runat="server" OnClick="LogoutBtn_Click" Text="LogOut" />
        </p>
    </form>
</body>
</html>
