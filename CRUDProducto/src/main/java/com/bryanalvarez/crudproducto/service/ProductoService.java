
package com.bryanalvarez.crudproducto.service;

import com.bryanalvarez.crudproducto.model.Producto;
import com.bryanalvarez.crudproducto.util.JpaUtil;
import jakarta.persistence.EntityManager;
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
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Producto> listarProdcutos() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Producto buscarProducto(int codigoProducto) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void editarProducto(Producto producto) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void eliminarProducto(int codigoProducto) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    } 
}