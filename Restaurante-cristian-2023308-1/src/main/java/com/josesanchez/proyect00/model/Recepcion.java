package com.josesanchez.proyect00.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity

public class Recepcion {
    @id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int codigoMesa;
    private int numeroAsientos;
    private String nombreCliente;
    private String fecha;
    private String hora;

    public Recepcion() {
    }

    public Recepcion(int codigoMesa, int numeroAsientos, String nombreCliente, String fecha, String hora) {
        this.codigoMesa = codigoMesa;
        this.numeroAsientos = numeroAsientos;
        this.nombreCliente = nombreCliente;
        this.fecha = fecha;
        this.hora = hora;
    }

    public int getCodigoMesa() {
        return codigoMesa;
    }

    public void setCodigoMesa(int codigoMesa) {
        this.codigoMesa = codigoMesa;
    }

    public int getNumeroAsientos() {
        return numeroAsientos;
    }

    public void setNumeroAsientos(int numeroAsientos) {
        this.numeroAsientos = numeroAsientos;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    @Override
    public String toString() {
        return "Mesa{" + "codigoMesa=" + codigoMesa + ", numeroAsientos=" + numeroAsientos + ", nombreCliente=" + nombreCliente + ", fecha=" + fecha + ", hora=" + hora + '}';
    }
}
