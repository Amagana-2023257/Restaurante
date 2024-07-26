package com.josesanchez.proyectoto.service;

import com.josesanchez.proyectoto.model.Gerente;
import java.util.List;

/**
 * Interfaz que define los métodos para la gestión de entidades Gerente.
 * Esta interfaz es implementada por la clase GerenteService para proporcionar
 * la lógica de negocio relacionada con los gerentes.
 */
public interface IGerenteService {

    /**
     * Método para crear un nuevo gerente en la base de datos.
     *
     * @param gerente La entidad Gerente que se va a persistir.
     */
    public void crearGerente(Gerente gerente);
    
    /**
     * Método para listar todos los gerentes de la base de datos.
     *
     * @return Una lista de entidades Gerente.
     */
    public List<Gerente> listarGerente();
    
    /**
     * Método para buscar un gerente por su código.
     *
     * @param codigoGerente El código del gerente que se va a buscar.
     * @return La entidad Gerente encontrada, o null si no se encuentra.
     */
    public Gerente buscarGerente(int codigoGerente);
    
    /**
     * Método para editar un gerente existente en la base de datos.
     *
     * @param gerente La entidad Gerente con los datos actualizados.
     */
    public void editarGerente(Gerente gerente);
    
    /**
     * Método para eliminar un gerente por su código.
     *
     * @param codigoGerente El código del gerente que se va a eliminar.
     */
    public void eliminarGerente(int codigoGerente);
}