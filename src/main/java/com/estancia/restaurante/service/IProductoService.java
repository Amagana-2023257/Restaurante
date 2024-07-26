
package com.estancia.restaurante.service;

import com.estancia.restaurante.model.Producto;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public interface IProductoService {
    public void crearProducto(Producto producto);
    
    public List<Producto> listarProductos();
    
    public Producto buscarProducto(int codigoProducto);
    
    public void editarProducto(Producto producto);
    
    public void eliminarProducto(int codigoProducto);
}
