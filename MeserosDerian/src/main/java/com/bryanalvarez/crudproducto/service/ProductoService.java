
package com.bryanalvarez.crudproducto.service;

import com.bryanalvarez.crudproducto.model.Producto;
import com.bryanalvarez.crudproducto.util.JpaUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public class ProductoService implements IProductoService{
    private EntityManager em;
    
    public ProductoService(){
        this.em = JpaUtil.getEntityManager();
    }

    @Override
    public void crearProducto(Producto producto) {
        EntityTransaction transaction = em.getTransaction();
        try{
            transaction.begin();
            em.persist(producto);
            transaction.commit();
        }catch(Exception e){
            if(transaction.isActive()){
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    @Override
    public List<Producto> listarProductos() {
        TypedQuery<Producto> query = em.createQuery("SELECT p FROM Producto p", Producto.class);
        return query.getResultList();
    }

    @Override
    public Producto buscarProducto(int codigoProducto) {
        return em.find(Producto.class, codigoProducto);
    }

    @Override
    public void editarProducto(Producto producto) {
        em.merge(producto);
    }

    @Override
    public void eliminarProducto(int codigoProducto) {
        Producto producto = buscarProducto(codigoProducto);
            if(producto != null){
                em.remove(producto);
        }
    } 
}