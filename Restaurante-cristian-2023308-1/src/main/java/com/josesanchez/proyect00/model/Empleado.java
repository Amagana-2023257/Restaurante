package com.josesanchez.proyect00.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity

public class Empleado {
    @id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int codigoEmpleado;
    private String nombresEmpleado;
    private String apellidosEmpleado;
    private String puesto;
    private double sueldo;
    private String turno;

    public Empleado() {
    }

    public Empleado(int codigoEmpleado, String nombresEmpleado, String apellidosEmpleado, String puesto, double sueldo, String turno) {
        this.codigoEmpleado = codigoEmpleado;
        this.nombresEmpleado = nombresEmpleado;
        this.apellidosEmpleado = apellidosEmpleado;
        this.puesto = puesto;
        this.sueldo = sueldo;
        this.turno = turno;
    }

    public int getCodigoEmpleado() {
        return codigoEmpleado;
    }

    public void setCodigoEmpleado(int codigoEmpleado) {
        this.codigoEmpleado = codigoEmpleado;
    }

    public String getNombresEmpleado() {
        return nombresEmpleado;
    }

    public void setNombresEmpleado(String nombresEmpleado) {
        this.nombresEmpleado = nombresEmpleado;
    }

    public String getApellidosEmpleado() {
        return apellidosEmpleado;
    }

    public void setApellidosEmpleado(String apellidosEmpleado) {
        this.apellidosEmpleado = apellidosEmpleado;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }

    public double getSueldo() {
        return sueldo;
    }

    public void setSueldo(double sueldo) {
        this.sueldo = sueldo;
    }

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }

    @Override
    public String toString() {
        return "Empleado{" + "codigoEmpleado=" + codigoEmpleado + ", nombresEmpleado=" + nombresEmpleado + ", apellidosEmpleado=" + apellidosEmpleado + ", puesto=" + puesto + ", sueldo=" + sueldo + ", turno=" + turno + '}';
    }
    
    
}
