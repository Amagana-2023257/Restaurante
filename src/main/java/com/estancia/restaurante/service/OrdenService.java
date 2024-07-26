/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.estancia.restaurante.service;

import com.estancia.restaurante.model.Orden;
import com.estancia.restaurante.util.JpaUtil;
import jakarta.persistence.EntityManager;
import java.util.List;

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
