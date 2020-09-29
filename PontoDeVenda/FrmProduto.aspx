<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmProduto.aspx.cs" Inherits="PontoDeVenda.FrmProduto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <title>Menu Principal</title>

    <link href="PontoDeVenda.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        #form1 {
            height: 580px;
            width: 1417px;
        }
        .auto-style1 {
            height: 34px;
        }
        .auto-style2 {
            width: 458px;
        }
        .auto-style3 {
            height: 34px;
            width: 458px;
        }
        
    </style>

</head>
<body>
    <form id="form1" runat="server">

        <div class="tudo">

            <!-- Logo -------------------------------------- -->
            <div class="logo">
                &nbsp;<img src="..\images\logotibum.jpg" style="height: 63px; width: 113px" alt="logo" /><asp:Label CssClass="Titulo" ID="Label1" runat="server" Text="Label">
                Módulo de Produtos
            </asp:Label>
            </div>

            <!-- Menu -------------------------------------- -->
            <div class="menu">
                <ul>
                    <li><a href="FrmMenuPrincipal.aspx">Menu</a></li>
                    <li><a href="FrmProduto.aspx">Produto</a></li>
                    <li><a href="2">PDV</a></li>
                    <li><a href="3">Cadastro</a></li>
                    <li><a href="4">Relatórios</a></li>
                    <li><a href="5">Fechamento de Caixa</a></li>
                </ul>

            </div>

            <!-- Título ------------------------------------ -->

                
               <table>
                    <tr>
            <!-- Menu -------------------------------------- -->
                        <th>ID Produto</th>
                        <td class="auto-style2"><asp:TextBox ID="ID_Produto" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <th>Descrição Produto</th>
                        <td class="auto-style2"><asp:TextBox ID="Ds_Produto" runat="server" Width="450"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <th>Preço Custo</th>
                        <td class="auto-style2"><asp:TextBox ID="pco_custo" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <th class="auto-style1">Preço de Venda</th>
                        <td class="auto-style3"><asp:TextBox ID="pco_venda" runat="server" ></asp:TextBox></td>
                    </tr>
                    <tr>
                        <th>Qtd de Estoque</th>
                        <td class="auto-style2"><asp:TextBox ID="qtd_estoque" runat="server"></asp:TextBox></td>
                    </tr>
               </table>
                <asp:GridView ID="gvwConsulta" runat="server" AutoGenerateColumns="False" DataKeyNames="id_produto" 
                 DataSourceID="SqlDataSource1" style="margin-top: 20px" Class = "grid">
                    <Columns>
                <!-- Mostrar dados ---------------------- -->
                        <asp:BoundField DataField="id_produto" HeaderText="ID Produto" InsertVisible="False" ReadOnly="True" SortExpression="id_produto" />
                        <asp:BoundField DataField="dsd_produto" HeaderText="Desc. Produto" SortExpression="dsd_produto" />
                        <asp:BoundField DataField="pco_custo" HeaderText="Preço Custo" SortExpression="pco_custo" />
                        <asp:BoundField DataField="pco_venda" HeaderText="Preço Venda" SortExpression="pco_venda" />
                        <asp:BoundField DataField="qtd_estoque" HeaderText="Qtd. Estoque" SortExpression="qtd_estoque" />
                    </Columns>

                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pontodevendabdConnectionString %>" ProviderName="<%$ ConnectionStrings:pontodevendabdConnectionString.ProviderName %>" SelectCommand="SELECT id_produto, dsd_produto, pco_custo, pco_venda, qtd_estoque FROM produto"></asp:SqlDataSource>
            <br />
        
                <br />

                <!--

                    - Se digitar dados nos campos => Incluir (Botões ativos: Incluir / Consultar / Limpar)
                    
                    - Se digitar ALGUNS campo => Consultar (Botões ativos: Incluir / Consultar / Limpar)
                    
                    - Consulta => o resultado para GridView (Botões ativos: Incluir / Consultar / Limpar)
                        - Ao clicar em um item do GridView => Mostrar os dados na tela 
                         (Botões ativos: Excluir / Alterar / Limpar)
                            - Excluir
                            - Alterar

                    - Limpar => limpa os textboxes e Botões ativos: Incluir / Consultar / Limpar

                    Entrega do trabalho: 07/10 - GridView (definição + explicação dos itens + Exemplo Explicado)

                -->

            
        
        </div>

    </form>
</body>
</html>
