/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.BufferedReader;
import java.util.ArrayList;

/**
 *
 * @author dandm
 */
public class LeerProductos {
    public static ArrayList <Producto> leer(String ruta)
    {
        File archivo;
        FileReader fr;
        BufferedReader br = null;
        ArrayList productos = new ArrayList <>();
        
        try
        {
            archivo = new File(ruta);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea;
            String [] cadena;
            int clave;
            String nombre;
            Double precio;
            int cantidad;
            Producto producto;
            
            linea = br.readLine();
            while (linea!=null)
            {
                cadena = linea.split(",");
                clave = Integer.parseInt(cadena[0]);
                nombre = cadena[1];
                precio = Double.parseDouble(cadena[2]);
                cantidad = Integer.parseInt(cadena[3]);
                producto = new Producto(clave,nombre,precio,cantidad);
                productos.add(producto);
                linea = br.readLine();
                
            }
            
        }
        catch(IOException e)
        {
            System.out.println("Error E/S: " + e);
        }
        finally
        {
            try
            {
               if (br!=null)
            br.close(); 
            }
            catch(IOException e)
            {
            System.out.println("Error E/S: " + e);
            }
        }
        return productos;
    }
}
