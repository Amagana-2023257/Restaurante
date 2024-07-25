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

    private EntityManager em;

    public OrdenService() {
        this.em = JpaUtil.getEntityManager();
    }

    @Override
    public List<Orden> listarOrden() {
        return em.createQuery("SELECT o FROM Orden o", Orden.class).getResultList();
    }

}
