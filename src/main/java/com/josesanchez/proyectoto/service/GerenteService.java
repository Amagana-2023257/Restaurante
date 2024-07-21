
package com.josesanchez.proyectoto.service;

import com.josesanchez.proyectoto.model.Gerente;
import com.josesanchez.proyectoto.util.JpaUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import java.util.List;


public class GerenteService implements IGerenteService{
    private EntityManager em;
    
    public void GerenteService(){
        this.em = JpaUtil.getEntityManager();
    }

    @Override
    public void crearGerente(Gerente gerente) {
        EntityTransaction transaction = em.getTransaction();
        try{
            transaction.begin();
            em.persist(gerente);
            transaction.commit();
        }catch(Exception e){
            if(transaction.isActive()){
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    @Override
    public List<Gerente> listarGerente() {
        TypedQuery<Gerente> query = em.createQuery("SELECT c FROM Cliente c", Gerente.class);
        return query.getResultList();
    }

    @Override
    public Gerente buscarGerente(int codigoGerente) {
        return em.find(Gerente.class, codigoGerente);
    }

    @Override
    public void editarGerente(Gerente gerente) {
        em.merge(gerente);
    }

    @Override
    public void eliminarGerente(int codigoGerente) {
      Gerente gerente = buscarGerente(codigoGerente);
            if(gerente != null){
                em.remove(gerente);
        }
    } 
}