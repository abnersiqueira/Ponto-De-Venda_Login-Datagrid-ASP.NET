<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMenuPrincipal.aspx.cs" Inherits="PontoDeVenda.FrmMenuPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <title>Menu Principal</title>

    <link href="PontoDeVenda.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">

        <div class="tudo">

            <!-- Logo -------------------------------------- -->
            <div class="logo">
                <img src="..\images\logotibum.jpg" style="height: 100px; width: 180px" alt="logo" />
            </div>

            <!-- Menu -------------------------------------- -->
            <div  class="menu">
                <ul>
                    <li><a href="FrmMenuPrincipal.aspx">Menu</a></li>
                    <li><a href="FrmProduto.aspx">Produto</a></li>
                    <li><a href="2">PDV</a></li>
                    <li><a href="3">Cadastro</a></li>
                    <li><a href="4">Relatórios</a></li>
                    <li><a href="5">Fechamento de Caixa</a></li>
                </ul>
            </div>

            <asp:Label CssClass="Titulo" ID="lblMenuPrincipal" runat="server" Text="Label">
                Menu Principal
            </asp:Label>
            <br />

            <!-- Menu -------------------------------------- -->
            <div class="conteudo">
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                

            </div>
        
        </div>

    </form>
</body>
</html>
