/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.javierapen.webapp.service;

import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import java.util.List;
import org.javierapen.webapp.model.Orden;
import org.javierapen.webapp.util.JpaUtil;

/**
 *
 * @author 50258
 */
public class OrdenService implements IOrdenService {

    // Administrador de entidades utilizado para interactuar con el contexto de persistencia.
    private EntityManager em;

    //Inicializa una instancia de OrdenService y obtiene un EntityManager.
    public OrdenService() {
        this.em = JpaUtil.getEntityManager();
    }

    /*
    Recupera una lista de todas las órdenes en la base de datos.
    Devuelve una lista de objetos Orden.
     */
    @Override
    public List<Orden> listarOrden() {
        TypedQuery<Orden> query = em.createQuery("SELECT o FROM Orden o", Orden.class);
        return query.getResultList();
    }

}
