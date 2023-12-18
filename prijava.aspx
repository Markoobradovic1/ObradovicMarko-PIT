<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prijava.aspx.cs" Inherits="Marko_Obradovic.prijava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><B><i>PRVA STRANA</i></B></h1>
 Ime i Prezime:
 <asp:TextBox ID="txtIme"
     runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="txtImeValidator"
     ErrorMessage="Ovo polje mora biti popunjeno!"
     ControlToValidate="txtIme"
     Display="Static"
     ForeColor="Red"
     SetFocusOnError="True"
     ValidationGroup="Group1"
     EnableClientScript="False"
     runat="server"></asp:RequiredFieldValidator>
 <br />
  Email: 
 <asp:TextBox ID="txtEmail"
     runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="txtEmailValidator"
     ErrorMessage="Ovo polje mora biti popunjeno!"
     ControlToValidate="txtEmail"
     Display="Static"
     ForeColor="Red"
     SetFocusOnError="True"
     ValidationGroup="Group1"
     EnableClientScript="False"
     runat="server"></asp:RequiredFieldValidator>
 <asp:RegularExpressionValidator ID="txtEmailExpression"
     ErrorMessage="Email nije u ispravnom formatu"
     ControlToValidate="txtEmail"               
     ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
     Display="Static"
     ForeColor="Red"
     SetFocusOnError="True"
     ValidationGroup="Group1"
     EnableClientScript="False"
     runat="server"></asp:RegularExpressionValidator>
 <br />
  Potvrdi Email: 
 <asp:TextBox ID="txtPotvrda"
     runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="txtPotvrdaValidator"
     ErrorMessage="Obavezno je ponovno ukucati email!"
     ControlToValidate="txtPotvrda"
     Display="Static"
     ForeColor="Red"
     SetFocusOnError="True"
     ValidationGroup="Group1"
     EnableClientScript="False"
     runat="server"></asp:RequiredFieldValidator>
 <asp:CompareValidator
     ID="PorediEmailValidator"
     ErrorMessage="Email se ne poklapa!"
     ControlToCompare="txtPotvrda"
     ControlToValidate="txtEmail"
     Display="Static"
     ForeColor="Red"
     SetFocusOnError="True"
     ValidationGroup="Group1"
     EnableClientScript="False"
     runat="server" ></asp:CompareValidator>
 <br />
 Godina rodjenja: 
 <asp:TextBox ID="txtGodina"
     runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="txtGodinaValidator"
     ErrorMessage="Ovo polje mora biti popunjeno!"
     ControlToValidate="txtGodina"
     Display="Static"
     ForeColor="Red"
     SetFocusOnError="True"
     ValidationGroup="Group1"
     EnableClientScript="False"
     runat="server"></asp:RequiredFieldValidator>
 <asp:RangeValidator ID="GodineValidator"
     ErrorMessage="Nedozvoljena godina rodjenja!"
     ControlToValidate="txtGodina"
     Display="Static"
     ForeColor="Red"
     SetFocusOnError="True"
     ValidationGroup="Group1"
     EnableClientScript="False"
     MinimumValue="2003"
     MaximumValue="2010"
     Type="Integer"
     runat="server"></asp:RangeValidator>
 <br />
 Razred:
 <asp:RadioButtonList ID="rblRazred" runat="server">
     <asp:ListItem value="0" Text="I"></asp:ListItem>
     <asp:ListItem value="1" Text="II"></asp:ListItem>
     <asp:ListItem value="2" Text="III"></asp:ListItem>
     <asp:ListItem value="3" Text="IV"></asp:ListItem>
 </asp:RadioButtonList>
 <asp:RequiredFieldValidator ID="rblRazredValidator"
     ControlToValidate="rblRazred"
     Display="static"
     EnableClientScript="False"
     ErrorMessage="Razred mora biti odabran!"
     SetFocusOnError="True"
     ValidationGroup="Group1"
     ForeColor="Red"
     runat="server"></asp:RequiredFieldValidator>
 <br />
 <asp:Button ID="btnPRIJAVA"
     ValidationGroup="Group1"
     CausesValidation="true"
     OnClick="btnPRIJAVA_Click"
     Text="PRIJAVI SE"
     runat="server" />
 <br />
 <asp:Label ID="lblPoruka"
     runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
