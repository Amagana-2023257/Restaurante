/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package org.javierapen.webapp.service;

import java.util.List;
import org.javierapen.webapp.model.Orden;

/**
 *
 * @author 50258
 */

/*
La interfaz IOrdenService define los métodos que deben 
ser implementados para gestionar las operaciones relacionadas 
con la entidad Orden
 */
public interface IOrdenService {

    /*
    Este método se utiliza para listar todas las órdenes disponibles en el sistema.
    Devuelve una lista de objetos Orden
     */
    public List<Orden> listarOrden();
}
