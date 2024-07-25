package com.josesanchez.proyect00.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Proveedor {
    
    @id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int nitProveedor;
    private String nombreProveedor;
    private String apellidoProveedor;
    private String telefonoProveedor;
    private String correoProveedor;

    public Proveedor() {
    }

    public Proveedor(int nitProveedor, String nombreProveedor, String apellidoProveedor, String telefonoProveedor, String correoProveedor) {
        this.nitProveedor = nitProveedor;
        this.nombreProveedor = nombreProveedor;
        this.apellidoProveedor = apellidoProveedor;
        this.telefonoProveedor = telefonoProveedor;
        this.correoProveedor = correoProveedor;
    }

    public int getNitProveedor() {
        return nitProveedor;
    }

    public void setNitProveedor(int nitProveedor) {
        this.nitProveedor = nitProveedor;
    }

    public String getNombreProveedor() {
        return nombreProveedor;
    }

    public void setNombreProveedor(String nombreProveedor) {
        this.nombreProveedor = nombreProveedor;
    }

    public String getApellidoProveedor() {
        return apellidoProveedor;
    }

    public void setApellidoProveedor(String apellidoProveedor) {
        this.apellidoProveedor = apellidoProveedor;
    }

    public String getTelefonoProveedor() {
        return telefonoProveedor;
    }

    public void setTelefonoProveedor(String telefonoProveedor) {
        this.telefonoProveedor = telefonoProveedor;
    }

    public String getCorreoProveedor() {
        return correoProveedor;
    }

    public void setCorreoProveedor(String correoProveedor) {
        this.correoProveedor = correoProveedor;
    }

    @Override
    public String toString() {
        return "Proveedor{" + "nitProveedor=" + nitProveedor + ", nombreProveedor=" + nombreProveedor + ", apellidoProveedor=" + apellidoProveedor + ", telefonoProveedor=" + telefonoProveedor + ", correoProveedor=" + correoProveedor + '}';
    }
    
    
}
