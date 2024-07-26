
package com.estancia.restaurante.service;

import com.estancia.restaurante.model.Cliente;
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
