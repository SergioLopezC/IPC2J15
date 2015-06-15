using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ServicioWeb2000
{
    /// <summary>
    /// Summary description for Service1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class ServicioWeb : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
              
        [WebMethod]
        public string getDireccion(String nombre)
        {
            string dConection = "Server=SERGIOLOPEZ\\SQLEXPRESS; Initial Catalog=BIBLIOTECA2; Integrated Security = True";
            SqlConnection Con = new SqlConnection(dConection);
            Con.Open();

            SqlDataAdapter CMD = new SqlDataAdapter("select * from CLIENTE where nom_cliente='" + nombre + "'", Con);
            DataSet DS = new DataSet();
            CMD.Fill(DS, "DATOS");

            DataTable tablaCliente = DS.Tables[0];
            string edad = tablaCliente.Rows[0]["dir_cliente"].ToString();

            return "mi nombre es " + edad;
            

        }

        [WebMethod]
        public void muestraLibros()
        {

        }
        [WebMethod]
        public void ingresoLibro()
        {

        }
        [WebMethod]
        public void ingresoCliente()
        {

        }
        [WebMethod]
        public void librosMasSolicitador()
        {

        }
    }
}