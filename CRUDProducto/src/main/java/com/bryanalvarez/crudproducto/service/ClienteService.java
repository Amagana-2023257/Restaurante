
package com.bryanalvarez.crudproducto.service;

import com.bryanalvarez.crudproducto.model.Cliente;
import com.bryanalvarez.crudproducto.util.JpaUtil;
import jakarta.persistence.EntityManager;
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
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Cliente> listarCliente() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Cliente buscarCliente(int nit) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void editarCliente(Cliente cliente) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void eliminarCliente(int nit) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    } 
}