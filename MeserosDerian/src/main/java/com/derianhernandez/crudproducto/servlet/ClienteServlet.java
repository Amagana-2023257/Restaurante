package com.derianhernandez.crudproducto.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import com.bryanalvarez.crudproducto.model.Cliente;
import com.bryanalvarez.crudproducto.model.Producto;
import com.bryanalvarez.crudproducto.service.ClienteService;

@WebServlet(name = "ClienteServlet", value = {"/cliente-servlet"})
@MultipartConfig
public class ClienteServlet extends HttpServlet {
    
    private ClienteService clienteService;
    
    @Override
    public void init() throws ServletException {
        super.init();
        this.clienteService = new ClienteService();
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Cliente> clientes = clienteService.listarCliente();
        clientes.forEach(p -> System.out.println(p));
        req.setAttribute("clientes", clientes);
        req.getRequestDispatcher("/lista-producto/lista-producto.jsp").forward(req, resp);
    }

    //Metodo de creacion de producto para asignarlo en la EntityManager
    private void crearCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int nit = Integer.parseInt(request.getParameter("nit"));
        String nombre = request.getParameter("nombreCliente");
        
        String apellido = request.getParameter("apellidoCliente");
        String direccionCliente = request.getParameter("direccionCliente");
        String telefonoCliente = request.getParameter("telefonoCliente");
        String correoCliente = request.getParameter("correoCliente");
        
        Cliente cliente = new Cliente(nit, nombre, apellido, direccionCliente, telefonoCliente, correoCliente);
        clienteService.crearCliente(cliente);
        
        response.sendRedirect(request.getContextPath() + "/");
    }

    //Post en la base
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathInfo = request.getPathInfo();
        
        if (pathInfo == null || pathInfo.equals("/")) {
            crearCliente(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }

    //Metodo de edicion de Clientes
    private void editarCliente(int codigoCliente, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cliente cliente = clienteService.buscarCliente(codigoCliente);
        if (cliente != null) {
            int nit = Integer.parseInt(req.getParameter("nit"));
            String nombre = req.getParameter("nombreCliente");
            
            String apellido = req.getParameter("apellidoCliente");
            String direccionCliente = req.getParameter("direccionCliente");
            String telefonoCliente = req.getParameter("telefonoCliente");
            String correoCliente = req.getParameter("correoCliente");
            
            cliente.setNit(nit);
            cliente.setNombreCliente(nombreCliente);
            cliente.setApellidoCliente(apellido);
            cliente.setDireccionCliente(direccionCliente);
            cliente.setTelefonoCliente(telefonoCliente);
            cliente.setCorreoCliente(correoCliente);
            
            clienteService.editarCliente(cliente);
            
            resp.sendRedirect(req.getContextPath() + "/productos/");
        } else {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
    
    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pathInfo = req.getPathInfo();

        if (pathInfo != null && !pathInfo.equals("/")) {
            String[] pathParts = pathInfo.split("/");
            if (pathParts.length == 2) {
                int nit = Integer.parseInt(pathParts[1]);
                editarCliente(nit, req, resp);
            } else {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
            }
        } else {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }
    
    //Metodo de eliminacion de Clientes
     private void eliminarCliente(int nit, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cliente cliente = clienteService.buscarCliente(nit);
        if (cliente != null) {
            clienteService.eliminarCliente(nit);
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
                int nit = Integer.parseInt(pathParts[1]);
                eliminarCliente(nit, req, resp);
            } else {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
            }
        } else {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }
}
