/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.Date;

/**
 *
 * @author Kevin Aparicio
 */
public class ViewModelProductos {
    
    private int ID_Producto;
    private String Nombre_Producto;
    private String descripcion;
    private float Precio_Unitario;
    private int existencia;
    private int ID_Proveedor;
    private String Nombre_Proveedor;
    private String Telefono_Proveedor;  

    public int getID_Producto() {
        return ID_Producto;
    }

    public void setID_Producto(int ID_Producto) {
        this.ID_Producto = ID_Producto;
    }

    public String getNombre_Producto() {
        return Nombre_Producto;
    }

    public void setNombre_Producto(String Nombre_Producto) {
        this.Nombre_Producto = Nombre_Producto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public float getPrecio_Unitario() {
        return Precio_Unitario;
    }

    public void setPrecio_Unitario(float Precio_Unitario) {
        this.Precio_Unitario = Precio_Unitario;
    }

    public int getExistencia() {
        return existencia;
    }

    public void setExistencia(int existencia) {
        this.existencia = existencia;
    }

    public int getID_Proveedor() {
        return ID_Proveedor;
    }

    public void setID_Proveedor(int ID_Proveedor) {
        this.ID_Proveedor = ID_Proveedor;
    }

    public String getNombre_Proveedor() {
        return Nombre_Proveedor;
    }

    public void setNombre_Proveedor(String Nombre_Proveedor) {
        this.Nombre_Proveedor = Nombre_Proveedor;
    }

    public String getTelefono_Proveedor() {
        return Telefono_Proveedor;
    }

    public void setTelefono_Proveedor(String Telefono_Proveedor) {
        this.Telefono_Proveedor = Telefono_Proveedor;
    }
    
 
}
