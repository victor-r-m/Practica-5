<%-- 
    Document   : despliegaProductos
    Created on : 27/07/2020, 12:35:57 PM
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
        <%@page import="java.util.ArrayList" %>
        <% ArrayList <Producto> productos = (ArrayList<Producto>) request.getAttribute("EnlistadoProductos"); %>
            <table border="1" cellspacing="3" cellpadding="3">
                <thead>
                    <tr>
                        <th> CLAVE </th>
                        <th> DESCRPCION </th>
                        <th> PRECIO </th>
                        <th> CANTIDAD </th>
                    </tr>
                </thead>
                <tbody>
                    <% for(int i = 0; i < productos.size(); i++)
                    {
                    %>
                    <tr>
                        <td> <%= productos.get(i).getClave() %> </td>
                        <td> <%= productos.get(i).getNombre() %> </td>
                        <td> <%= productos.get(i).getPrecio() %> </td>
                        <td> <%= productos.get(i).getCantidad() %> </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
                    <form action="index.jsp" method="POST">
                        <input type="submit" value="Regresar" />
                    </form>
    </body>
</html>
