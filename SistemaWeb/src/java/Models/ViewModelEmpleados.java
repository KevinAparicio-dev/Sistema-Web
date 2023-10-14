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
    private String NombresEmpleado;
    private String ApellidosEmpleados;
    private Date FechaNacEmpleado;
    private String Telefono;
    private String Correo;
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
        return NombresEmpleado;
    }
    public void setNombresEmpleado(String NombresEmpleado) {
        this.NombresEmpleado = NombresEmpleado;
    }
    
    public String getApellidosEmpleados() {
        return ApellidosEmpleados;
    }
    public void setApellidosEmpleados(String ApellidosEmpleados) {
        this.ApellidosEmpleados = ApellidosEmpleados;
    }

    public Date getFechaNacEmpleado() {
        return FechaNacEmpleado;
    }
    public void setFechaNacEmpleado(Date FechaNacEmpleado) {
        this.FechaNacEmpleado = FechaNacEmpleado;
    }

    public String getTelefono() {
        return Telefono;
    }
    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getCorreo() {
        return Correo;
    }
    public void setCorreo(String Correo) {
        this.Correo = Correo;
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
