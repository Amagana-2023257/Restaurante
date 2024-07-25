package com.josesanchez.proyect00.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Utencilio {
    
    @id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int codigoUtencilio;
    private String nombreUtencilio;
    private String material;
    private String color;

    public Utencilio() {
    }

    public Utencilio(int codigoUtencilio, String nombreUtencilio, String material, String color) {
        this.codigoUtencilio = codigoUtencilio;
        this.nombreUtencilio = nombreUtencilio;
        this.material = material;
        this.color = color;
    }

    public int getCodigoUtencilio() {
        return codigoUtencilio;
    }

    public void setCodigoUtencilio(int codigoUtencilio) {
        this.codigoUtencilio = codigoUtencilio;
    }

    public String getNombreUtencilio() {
        return nombreUtencilio;
    }

    public void setNombreUtencilio(String nombreUtencilio) {
        this.nombreUtencilio = nombreUtencilio;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    @Override
    public String toString() {
        return "Utencilio{" + "codigoUtencilio=" + codigoUtencilio + ", nombreUtencilio=" + nombreUtencilio + ", material=" + material + ", color=" + color + '}';
    }
    
}
