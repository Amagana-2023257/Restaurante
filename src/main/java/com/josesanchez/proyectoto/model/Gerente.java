package com.josesanchez.proyectoto.model;

// Importaciones necesarias de JPA (Jakarta Persistence API)
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

/**
 * La clase Gerente representa una entidad para la tabla de gerentes en la base de datos.
 */
@Entity
public class Gerente {
    
    // Campo que representa la clave primaria, con generación automática de su valor.
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int codigoGerente;
    
    // Campo que almacena el nombre del gerente.
    private String nombreGerente;
    
    // Campo que almacena el apellido del gerente.
    private String apellidoGerente;
    
    // Campo que almacena el correo electrónico del gerente.
    private String correoGerente;
    
    // Campo que almacena el número de teléfono del gerente.
    private String numeroGerente;
    
    // Campo que almacena la dirección del gerente.
    private String direccionGerente;
    
    // Campo que almacena el estado actual del gerente.
    private String estado;
    
    // Campo que almacena el sueldo del gerente.
    private double sueldo;

    /**
     * Constructor sin parámetros necesario para JPA.
     */
    public Gerente() {
    }

    /**
     * Constructor con parámetros para inicializar todos los campos del gerente.
     *
     * @param codigoGerente  El código del gerente.
     * @param nombreGerente  El nombre del gerente.
     * @param apellidoGerente  El apellido del gerente.
     * @param correoGerente  El correo electrónico del gerente.
     * @param numeroGerente  El número de teléfono del gerente.
     * @param direccionGerente  La dirección del gerente.
     * @param estado  El estado actual del gerente.
     * @param sueldo  El sueldo del gerente.
     */
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

    // Métodos getter y setter para cada campo.

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