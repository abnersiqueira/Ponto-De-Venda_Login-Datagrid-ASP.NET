using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PontoDeVenda
{
    public partial class FrmLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAcessar_Click(object sender, EventArgs e)
        {
            // Definir as variáveis
            string mDs_Login = "";
            string mDs_Pwd = "";
            string mDs_Msg = "";

            // Carregar os dados da tela para as vars
            mDs_Login = txtDs_Login.Text;
            mDs_Pwd = txtDs_Pwd.Text;

            // HOJE: mostrar os dados
            //lblDs_Msg.Text = "Login: " + mDs_Login + " / Pwd: " + mDs_Pwd;


            // Acessar

            // vejam: http://www.linhadecodigo.com.br/artigo/574/aspnet-redirecionando-paginas.aspx

            // Instanciar
            ClsAcesso mObj = new ClsAcesso();

            // Enviar parâmetros
            mObj.Ds_Login = mDs_Login;
            mObj.Ds_Pwd = mDs_Pwd;

            // Verificar acesso
            mDs_Msg = mObj.Acessar();

            // Tem acesso?
            if ( mDs_Msg == "") {

                // Acessar 
                Response.Redirect("FrmMenuPrincipal.aspx");

            } else
            {
                // No way!
                lblDs_Msg.Text = mDs_Msg;

            }
        }
    }
}