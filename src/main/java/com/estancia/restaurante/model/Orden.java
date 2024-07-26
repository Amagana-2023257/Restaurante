/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.estancia.restaurante.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 *
 * @author 50258
 */
@Entity
@Table(name = "Orden")
public class Orden {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int codigoOrden;
    private String excepciones;
    private int codigoMesa;
    private int codigoProducto;
    private int codigoEmpleado;

    public Orden() {
    }

    public Orden(int codigoOrden, String excepciones, int codigoMesa, int codigoProducto, int codigoEmpleado) {
        this.codigoOrden = codigoOrden;
        this.excepciones = excepciones;
        this.codigoMesa = codigoMesa;
        this.codigoProducto = codigoProducto;
        this.codigoEmpleado = codigoEmpleado;
    }

    public int getCodigoOrden() {
        return codigoOrden;
    }

    public void setCodigoOrden(int codigoOrden) {
        this.codigoOrden = codigoOrden;
    }

    public String getExcepciones() {
        return excepciones;
    }

    public void setExcepciones(String excepciones) {
        this.excepciones = excepciones;
    }

    public int getCodigoMesa() {
        return codigoMesa;
    }

    public void setCodigoMesa(int codigoMesa) {
        this.codigoMesa = codigoMesa;
    }

    public int getCodigoProducto() {
        return codigoProducto;
    }

    public void setCodigoProducto(int codigoProducto) {
        this.codigoProducto = codigoProducto;
    }

    public int getCodigoEmpleado() {
        return codigoEmpleado;
    }

    public void setCodigoEmpleado(int codigoEmpleado) {
        this.codigoEmpleado = codigoEmpleado;
    }

    @Override
    public String toString() {
        return "Orden{" + "codigoOrden=" + codigoOrden + ", excepciones=" + excepciones + ", codigoMesa=" + codigoMesa + ", codigoProducto=" + codigoProducto + ", codigoEmpleado=" + codigoEmpleado + '}';
    }

    
}
