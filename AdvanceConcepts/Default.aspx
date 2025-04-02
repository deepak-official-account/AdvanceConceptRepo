<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AdvanceConcepts.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 24px;
            width: 68px;
        }
        #form2 {
            height: 24px;
            width: 68px;
        }
    </style>
</head>
<body>
 
    <form id="form1" runat="server">
        Name<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
        <p>
            &nbsp;</p>
        Age<asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
    <br />
        <asp:Button Text="Submit" runat="server" ID="Btn" OnClick="Btn_Click"  />
    </form>
    <p>
        &nbsp;</p>


</body>
</html>
