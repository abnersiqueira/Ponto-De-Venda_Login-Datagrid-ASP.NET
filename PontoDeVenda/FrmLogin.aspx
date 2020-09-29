<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmLogin.aspx.cs" Inherits="PontoDeVenda.FrmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>Ponto de Venda</title>

    <link href="PontoDeVenda.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Login</td>
                    <td>
                        <asp:TextBox ID="txtDs_Login" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox CssClass="Campo" ID="txtDs_Pwd" runat="server" MaxLength="10" TextMode="Password" Width="181px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="btnAcessar" CssClass="Campo" runat="server" Text="Acessar" OnClick="btnAcessar_Click" />
            <br />
                <asp:Label CssClass="Msg" ID="lblDs_Msg" runat="server" Text=""></asp:Label>
            <br />
            <div>
            </div>

        </div>
    </form>
</body>
</html>
