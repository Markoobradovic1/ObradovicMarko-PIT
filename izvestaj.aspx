<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="izvestaj.aspx.cs" Inherits="Marko_Obradovic.izvestaj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%@ PreviousPageType VirtualPath="~/prijava.aspx" %>
 <h1><b><i>IZVESTAJ</i></b></h1>
 <br />
 <asp:Label ID="lblPoruka"
     runat="server"></asp:Label>
 <br />
 <asp:Button Text="Forma za prijavu"
     ID="btnNazad"
     runat="server"
     onclick="btn_btnNazad"/>
        </div>
    </form>
</body>
</html>
