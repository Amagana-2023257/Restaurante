package com.estancia.restaurante.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import com.estancia.restaurante.model.Producto;
import com.estancia.restaurante.service.ProductoService;

@WebServlet(name = "ProductoServlet", value = {"/producto-servlet"})
@MultipartConfig
public class ProductoServlet extends HttpServlet {

    //Objeto de producto servicio
    private ProductoService productoService;

    //Metodo init del Http
    @Override
    public void init() throws ServletException {
        super.init();
        this.productoService = new ProductoService();
    }

    //Sobre carga del metodo doGet para listar los productos
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Producto> productos = productoService.listarProductos();
        productos.forEach(p -> System.out.println(p));
        req.setAttribute("productos", productos);
        req.getRequestDispatcher("mesero.jsp").forward(req, resp);
    }

    //Metodo de creacion de producto para asignarlo en la EntityManager
    private void crearProducto(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int codigo = Integer.parseInt(request.getParameter("codigoProducto"));
        String nombre = request.getParameter("nombreProducto");
        String ingredientes = request.getParameter("ingredientes");
        double precio = Double.parseDouble(request.getParameter("precioProducto"));
        String imagen = request.getParameter("imagenProducto");
        

        Producto producto = new Producto(codigo, nombre, ingredientes, precio, imagen);
        productoService.crearProducto(producto);

        response.sendRedirect(request.getContextPath() + "/");
    }

    //Post en la base
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathInfo = request.getPathInfo();

        if (pathInfo == null || pathInfo.equals("/")) {
            crearProducto(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }

    //Metodo de edicion de productos
    private void editarProducto(int codigoProducto, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Producto producto = productoService.buscarProducto(codigoProducto);
        if (producto != null) {
            int codigo = Integer.parseInt(req.getParameter("codigoProducto"));
            String nombre = req.getParameter("nombreProducto");
            String ingredientes = req.getParameter("ingredientes");
            String imagen = req.getParameter("imagenProducto");
            double precio = Double.parseDouble(req.getParameter("precioProducto"));

            producto.setCodigoProducto(codigoProducto);
            producto.setNombreProducto(nombre);
            producto.setIngredientes(ingredientes);
            producto.setImagenProducto(imagen);
            producto.setPrecioProducto(precio);

            productoService.editarProducto(producto);

            resp.sendRedirect(req.getContextPath() + "/productos/");
        } else {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
    
    //Put en la base
    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pathInfo = req.getPathInfo();

        if (pathInfo != null && !pathInfo.equals("/")) {
            String[] pathParts = pathInfo.split("/");
            if (pathParts.length == 2) {
                int productoId = Integer.parseInt(pathParts[1]);
                editarProducto(productoId, req, resp);
            } else {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
            }
        } else {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }
    
    //Metodo de eliminacion de Productos
     private void eliminarProducto(int codigoProducto, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Producto producto = productoService.buscarProducto(codigoProducto);
        if (producto != null) {
            productoService.eliminarProducto(codigoProducto);
            resp.sendRedirect(req.getContextPath() + "/productos/");
        } else {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
     
     //Delete de la base
     @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pathInfo = req.getPathInfo();

        if (pathInfo != null && !pathInfo.equals("/")) {
            String[] pathParts = pathInfo.split("/");
            if (pathParts.length == 2) {
                int productoId = Integer.parseInt(pathParts[1]);
                eliminarProducto(productoId, req, resp);
            } else {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
            }
        } else {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }
}
