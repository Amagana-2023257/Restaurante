
package com.bryanalvarez.crudproducto.service;

import com.bryanalvarez.crudproducto.model.Cliente;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public interface IClienteService {
    public void crearCliente(Cliente cliente);
    
    public List<Cliente> listarCliente();
    
    public Cliente buscarCliente(int nit);
    
    public void editarCliente(Cliente cliente);
    
    public void eliminarCliente(int nit);
}
