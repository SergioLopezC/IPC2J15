<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AplicacionWebCliente._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="abrigo_general">
        <div id="content_login" >
            <table>
                    <tr>
                         <td>
                             <asp:Image ID="imgLogin" runat="server" ImageUrl="~/Imagenes/login.png" Width="56px" Height="56px"/>
                           
                         </td>
                         <td align="left">
                               Inicio de sesion
                         </td>
                    </tr>
                <tr>
                    <td colspan="2" align="left">Nombre de usuario</td>
                </tr>
                 <tr>
                    <td colspan="2" align="left"><asp:TextBox ID="txtUsuario" runat="server" Width="170px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="3" align="left">Password</td>
                </tr>
                 <tr>
                    <td colspan="2" align="left"><asp:TextBox ID="txtPass" runat="server" Width="170px" TextMode="Password" ></asp:TextBox></td>
                </tr>
                               
                 <tr>
                    <td colspan="2" align="center"><asp:Label ID="lblError" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="3" align="center"><asp:Button ID="btnAceptar" runat="server" Text="Aceptar" Width="150" OnClick="btnAceptar_Click"/></td>
                </tr>
            </table>
        </div>
    
    </div>
      
    </form>
</body>
</html>
