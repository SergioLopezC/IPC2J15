using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacionWebCliente
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            if (txtUsuario.Text != "" && txtPass.Text != "")
            {
                lblError.Text = "Bienvenido al sistema";
                lblError.Visible = true;
               /* Response.Redirect["frmPrincipal.aspx"];*/

            }
            else
            {
                lblError.Text = "faltan ingresar campos";
                lblError.Visible = true;
            }
        }
    }
}