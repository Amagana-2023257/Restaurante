
package com.bryanalvarez.crudproducto.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Cliente {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int nit;
    private String nombreCleinte;
    private String apellidoCliente;
    private String direccionCliente;
    private String telefonoCliente;
    private String correoCliente;

    public Cliente() {
    }

    public Cliente(int nit, String nombreCleinte, String apellidoCliente, String direccionCliente, String telefonoCliente, String correoCliente) {
        this.nit = nit;
        this.nombreCleinte = nombreCleinte;
        this.apellidoCliente = apellidoCliente;
        this.direccionCliente = direccionCliente;
        this.telefonoCliente = telefonoCliente;
        this.correoCliente = correoCliente;
    }

    public int getNit() {
        return nit;
    }

    public void setNit(int nit) {
        this.nit = nit;
    }

    public String getNombreCleinte() {
        return nombreCleinte;
    }

    public void setNombreCleinte(String nombreCleinte) {
        this.nombreCleinte = nombreCleinte;
    }

    public String getApellidoCliente() {
        return apellidoCliente;
    }

    public void setApellidoCliente(String apellidoCliente) {
        this.apellidoCliente = apellidoCliente;
    }

    public String getDireccionCliente() {
        return direccionCliente;
    }

    public void setDireccionCliente(String direccionCliente) {
        this.direccionCliente = direccionCliente;
    }

    public String getTelefonoCliente() {
        return telefonoCliente;
    }

    public void setTelefonoCliente(String telefonoCliente) {
        this.telefonoCliente = telefonoCliente;
    }

    public String getCorreoCliente() {
        return correoCliente;
    }

    public void setCorreoCliente(String correoCliente) {
        this.correoCliente = correoCliente;
    }

    @Override
    public String toString() {
        return "Cliente{" + "nit=" + nit + ", nombreCleinte=" + nombreCleinte + ", apellidoCliente=" + apellidoCliente + ", direccionCliente=" + direccionCliente + ", telefonoCliente=" + telefonoCliente + ", correoCliente=" + correoCliente + '}';
    } 
}