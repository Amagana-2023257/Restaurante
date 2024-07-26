
package com.estancia.restaurante.service;

import com.estancia.restaurante.model.Cliente;
import com.estancia.restaurante.util.JpaUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public class ClienteService implements IClienteService{
    private EntityManager em;
    
    public void ClienteService(){
        this.em = JpaUtil.getEntityManager();
    }

    @Override
    public void crearCliente(Cliente cliente) {
        EntityTransaction transaction = em.getTransaction();
        try{
            transaction.begin();
            em.persist(cliente);
            transaction.commit();
        }catch(Exception e){
            if(transaction.isActive()){
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    @Override
    public List<Cliente> listarCliente() {
        TypedQuery<Cliente> query = em.createQuery("SELECT c FROM Cliente c", Cliente.class);
        return query.getResultList();
    }

    @Override
    public Cliente buscarCliente(int nit) {
        return em.find(Cliente.class, nit);
    }

    @Override
    public void editarCliente(Cliente cliente) {
        em.merge(cliente);
    }

    @Override
    public void eliminarCliente(int nit) {
      Cliente cliente = buscarCliente(nit);
            if(cliente != null){
                em.remove(cliente);
        }
    } 
}