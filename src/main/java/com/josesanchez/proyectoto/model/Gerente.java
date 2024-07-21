package com.josesanchez.proyectoto.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Gerente {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int codigoGerente;
    private String nombreGerente;
    private String apellidoGerente;
    private String correoGerente;
    private String numeroGerente;
    private String direccionGerente;
    private String estado;
    private double sueldo;

    public Gerente() {
    }

    public Gerente(int codigoGerente, String nombreGerente, String apellidoGerente, String correoGerente, String numeroGerente, String direccionGerente, String estado, double sueldo) {
        this.codigoGerente = codigoGerente;
        this.nombreGerente = nombreGerente;
        this.apellidoGerente = apellidoGerente;
        this.correoGerente = correoGerente;
        this.numeroGerente = numeroGerente;
        this.direccionGerente = direccionGerente;
        this.estado = estado;
        this.sueldo = sueldo;
    }

    public int getCodigoGerente() {
        return codigoGerente;
    }

    public void setCodigoGerente(int codigoGerente) {
        this.codigoGerente = codigoGerente;
    }

    public String getNombreGerente() {
        return nombreGerente;
    }

    public void setNombreGerente(String nombreGerente) {
        this.nombreGerente = nombreGerente;
    }

    public String getApellidoGerente() {
        return apellidoGerente;
    }

    public void setApellidoGerente(String apellidoGerente) {
        this.apellidoGerente = apellidoGerente;
    }

    public String getCorreoGerente() {
        return correoGerente;
    }

    public void setCorreoGerente(String correoGerente) {
        this.correoGerente = correoGerente;
    }

    public String getNumeroGerente() {
        return numeroGerente;
    }

    public void setNumeroGerente(String numeroGerente) {
        this.numeroGerente = numeroGerente;
    }

    public String getDireccionGerente() {
        return direccionGerente;
    }

    public void setDireccionGerente(String direccionGerente) {
        this.direccionGerente = direccionGerente;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public double getSueldo() {
        return sueldo;
    }

    public void setSueldo(double sueldo) {
        this.sueldo = sueldo;
    }
    
}
