<%-- 
    Document   : mostrarRegistro
    Created on : 27/07/2020, 12:19:53 PM
    Author     : dandm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="Modelo.Producto" %>
        <% Producto producto = (Producto) request.getAttribute("Atributo_Producto"); %>
            <table border="1" cellspacing="3" cellpadding="3">
                <tbody>
                    <tr>
                        <td style="align-content:center">Clave:</td>
                        <td> <%=producto.getClave() %> </td>
                    </tr>
                    <tr>
                        <td style="align-content:center">Nombre:</td>
                        <td> <%=producto.getNombre() %> </td>
                    </tr>
                    <tr>
                        <td style="align-content:center">Precio:</td>
                        <td> <%=producto.getPrecio() %> </td>
                    </tr>
                    <tr>
                        <td style="align-content:center">Cantidad:</td>
                        <td> <%=producto.getCantidad() %> </td>
                    </tr>
                </tbody>
            </table>
                    <form action="index.jsp" method="POST">
                        <input type="submit" value="Regresar" />
                    </form>
    </body>
</html>
