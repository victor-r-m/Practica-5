package Modelo;
import java.io.*;

public class GuardaProducto {
    
    public static void agregar(Producto producto, String ruta)
    {
        File archivo;
        FileWriter fw;
        PrintWriter pw = null;
        
        try
        {
            archivo = new File(ruta);
            fw = new FileWriter(archivo, true);
            pw = new PrintWriter(fw);
            pw.println(producto.getClave() + "," + producto.getNombre() + "," + producto.getPrecio() + "," + producto.getCantidad());
        }
        catch(IOException e)
        {
            System.out.println("Error E/S: " + e);
        }
        finally
        {
            if (pw!=null)
            pw.close();
        }
    }
    
}
