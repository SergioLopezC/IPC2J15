using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebServiceQuetzalExpress
{
    /// <summary>
    /// Summary description for Service1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/",Name="QUETZAL EXPRESS")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Service1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        public string ingresoPaquetes()
        {
            return "INGRESO DE PAQUETES";
        }
        [WebMethod]
        public string facturacionPaquetes()
        {
            return "FACTURACION DE ENVIO";
        }
        [WebMethod]
        public string listadoCliente()
        {
            return "LISTADO DE CLIENTES";
        }
    }
}