using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PontoDeVenda
{
    public class ClsAcesso
    {
        string mDs_Login = "";
        string mDs_Pwd = "";
        string mDs_Msg = "";

        public string Ds_Login
        {
            get { return mDs_Login; }
            set { mDs_Login = value; }
        }

        public string Ds_Pwd
        {
            get { return mDs_Pwd; }
            set { mDs_Pwd = value; }
        }

        public string Ds_Msg
        {
            get { return mDs_Msg; }
            set { mDs_Msg = value; }
        }

        public string Acessar()
        {
            
            try
            {
                mDs_Msg = "";

                // Abre banco

                // Verifica se no banco existe Login+Senha

                // Se não existir: mDs_Msg = "Login/Pwd não existem"

            }
            catch (Exception e)
            {
                mDs_Msg = e.Message;
            }
            finally
            {
                // fecha banco
            }

            return(mDs_Msg);

        }

    }
}