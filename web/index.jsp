<%-- 
    Document   : index
    Created on : 13/07/2020, 11:53:23 AM
    Author     : dandm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="assets/css/main.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Proporciona los datos del producto</h2>
        <div>
           <form action="registraProducto" method="POST" autocomplete="off">
            <table border="2" cellspacing="3" cellpadding="3">
                <tbody>
                    <tr>
                        <td>Clave:</td>
                        <td> <input type="text" name="clave" value="" /></td>
                    </tr>
                    <tr>
                        <td>Nombre:</td>
                        <td> <input type="text" name="nombre" value="" /></td>
                    </tr>
                    <tr>
                        <td>Precio:</td>
                        <td> <input type="text" name="precio" value="" /></td>
                    </tr>
                    <tr>
                        <td>Cantidad:</td>
                        <td> <input type="text" name="cantidad" value="" /></td>
                    </tr>
                </tbody>
             </table>
                <input type="reset" value="Borrar" />
                <input type="submit" value="Registrar" />
            </form> 
        </div>
        
        <form action="mostrarProductos" method="POST">
            <input class="Productos" type="submit" value="Ver Productos" /> 
        </form>
    </body>
</html>
