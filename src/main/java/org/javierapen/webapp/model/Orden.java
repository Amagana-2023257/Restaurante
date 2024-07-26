/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.javierapen.webapp.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 *
 * @author 50258
 */

/*
La clase (Modelo) Orden representa una entidad que se mapeará a una 
tabla en una base de datos mediante JPA 
*/
@Entity
// Especifica el nombre de la tabla en la base de datos a la que se mapeará esta entidad.
@Table(name = "Orden")
public class Orden {

    // Denota el campo codigoOrden como la clave primaria de la tabla.
    @Id
    // Declaraciones de los atributos de la entidad Orden
    private int codigoOrden;
    private String excepciones;
    private int codigoMesa;
    private int codigoProducto;
    private int codigoEmpleado;

    //Constructor vacio necesario para JPA
    public Orden() {
    }

    // Permite inicializar la entidad con valores específicos para todos sus campos.
    public Orden(int codigoOrden, String excepciones, int codigoMesa, int codigoProducto, int codigoEmpleado) {
        this.codigoOrden = codigoOrden;
        this.excepciones = excepciones;
        this.codigoMesa = codigoMesa;
        this.codigoProducto = codigoProducto;
        this.codigoEmpleado = codigoEmpleado;
    }

    /*
        Getter & Setters
        Métodos para obtener y establecer el valor  a los 
        atributos de la entidad Orden
    */
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

    // Proporciona una representación en forma de cadena de la instancia de la clase Orden.
    @Override
    public String toString() {
        return "Orden{" + "codigoOrden=" + codigoOrden + ", excepciones=" + excepciones + ", codigoMesa=" + codigoMesa + ", codigoProducto=" + codigoProducto + ", codigoEmpleado=" + codigoEmpleado + '}';
    }

    
}
