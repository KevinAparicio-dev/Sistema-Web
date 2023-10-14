/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.Date;

/**
 *
 * @author ernes
 */
public class ViewModelEmpleados {
     
    //Atributos
    private int ID_Empleado;
    private String DUI_Empleado;
    private int ISSS_Empleado;
    private String nombresEmpleado;
    private String apellidosEmpleados;
    private Date fechaNacEmpleado;
    private String telefono;
    private String correo;
    private int ID_Cargo;
    private int ID_Direccion;

    public int getID_Empleado() {
        return ID_Empleado;
    }
    public void setID_Empleado(int ID_Empleado) {
        this.ID_Empleado = ID_Empleado;
    }

    public String getDUI_Empleado() {
        return DUI_Empleado;
    }
    public void setDUI_Empleado(String DUI_Empleado) {
        this.DUI_Empleado = DUI_Empleado;
    }

    public int getISSS_Empleado() {
        return ISSS_Empleado;
    }
    public void setISSS_Empleado(int ISSS_Empleado) {
        this.ISSS_Empleado = ISSS_Empleado;
    }

    public String getNombresEmpleado() {
        return nombresEmpleado;
    }
    public void setNombresEmpleado(String nombresEmpleado) {
        this.nombresEmpleado = nombresEmpleado;
    }

    public String getApellidosEmpleados() {
        return apellidosEmpleados;
    }
    public void setApellidosEmpleados(String apellidosEmpleados) {
        this.apellidosEmpleados = apellidosEmpleados;
    }

    public Date getFechaNacEmpleado() {
        return fechaNacEmpleado;
    }
    public void setFechaNacEmpleado(Date fechaNacEmpleado) {
        this.fechaNacEmpleado = fechaNacEmpleado;
    }

    public String getTelefono() {
        return telefono;
    }
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }
    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getID_Cargo() {
        return ID_Cargo;
    }
    public void setID_Cargo(int ID_Cargo) {
        this.ID_Cargo = ID_Cargo;
    }

    public int getID_Direccion() {
        return ID_Direccion;
    }
    public void setID_Direccion(int ID_Direccion) {
        this.ID_Direccion = ID_Direccion;
    }
    
}