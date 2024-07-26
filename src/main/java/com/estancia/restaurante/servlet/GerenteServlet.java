package com.estancia.restaurante.servlet;

import com.estancia.restaurante.model.Gerente;
import com.estancia.restaurante.service.GerenteService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet que maneja las operaciones CRUD para la entidad Gerente.
 * Este servlet utiliza la clase GerenteService para interactuar con la base de datos.
 */
@WebServlet(name = "GerenteServlet", value = {"/gerente-servlet"})
@MultipartConfig
public class GerenteServlet extends HttpServlet {

    // Objeto del servicio de gerente utilizado para operaciones CRUD
    private GerenteService gerenteService;

    /**
     * Inicializa el servlet. Se llama automáticamente cuando se carga el servlet.
     * Aquí se inicializa el servicio de gerente.
     *
     * @throws ServletException Si ocurre un error durante la inicialización.
     */
    @Override
    public void init() throws ServletException {
        super.init();
        this.gerenteService = new GerenteService();
    }

    /**
     * Maneja las solicitudes HTTP GET.
     * Recupera la lista de gerentes y la envía a la vista.
     *
     * @param req La solicitud HTTP.
     * @param resp La respuesta HTTP.
     * @throws ServletException Si ocurre un error durante el procesamiento de la solicitud.
     * @throws IOException Si ocurre un error de entrada/salida.
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Gerente> gerente = gerenteService.listarGerente();
        gerente.forEach(p -> System.out.println(p)); // Imprime los detalles de cada gerente en la consola
        req.setAttribute("gerente", gerente);
        req.getRequestDispatcher("/lista-gerente/lista-gerente.jsp").forward(req, resp);
    }

    /**
     * Maneja la creación de un nuevo gerente a partir de los parámetros de la solicitud.
     * Redirige al usuario a la página principal después de la creación.
     *
     * @param request La solicitud HTTP.
     * @param response La respuesta HTTP.
     * @throws ServletException Si ocurre un error durante el procesamiento de la solicitud.
     * @throws IOException Si ocurre un error de entrada/salida.
     */
    private void crearGerente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int codigoGerente = Integer.parseInt(request.getParameter("codigoGerente"));
        String nombreGerente = request.getParameter("nombreGerente");
        String apellidoGerente = request.getParameter("apellidoGerente");
        String correoGerente = request.getParameter("correoGerente");
        String numeroGerente = request.getParameter("numeroGerente");      
        String dirreccionGerente = request.getParameter("dirreccionGerente");
        String estado = request.getParameter("estado");
        double sueldo = Double.parseDouble(request.getParameter("sueldo"));

        Gerente gerente = new Gerente(codigoGerente, nombreGerente, apellidoGerente, correoGerente, numeroGerente, dirreccionGerente, estado, sueldo);
        gerenteService.crearGerente(gerente);

        response.sendRedirect(request.getContextPath() + "/");
    }

    /**
     * Maneja las solicitudes HTTP POST.
     * Determina si la solicitud es para crear un nuevo gerente y llama al método adecuado.
     *
     * @param request La solicitud HTTP.
     * @param response La respuesta HTTP.
     * @throws ServletException Si ocurre un error durante el procesamiento de la solicitud.
     * @throws IOException Si ocurre un error de entrada/salida.
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathInfo = request.getPathInfo();

        if (pathInfo == null || pathInfo.equals("/")) {
            crearGerente(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }

    /**
     * Maneja la edición de un gerente existente.
     * Actualiza los datos del gerente con el código especificado y redirige al usuario.
     *
     * @param codigoGerente El código del gerente a editar.
     * @param req La solicitud HTTP.
     * @param resp La respuesta HTTP.
     * @throws ServletException Si ocurre un error durante el procesamiento de la solicitud.
     * @throws IOException Si ocurre un error de entrada/salida.
     */
    private void editarGerente(int codigoGerente, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Gerente gerente = gerenteService.buscarGerente(codigoGerente);
        if (gerente != null) {
            int codigo = Integer.parseInt(req.getParameter("codigoGerente"));
            String nombreGerente = req.getParameter("nombreGerente");
            String apellidoGerente = req.getParameter("apellidoGerente");
            String correoGerente = req.getParameter("correoGerente");
            String numeroGerente = req.getParameter("numeroGerente");      
            String dirreccionGerente = req.getParameter("dirreccionGerente");
            String estado = req.getParameter("estado");
            double sueldo = Double.parseDouble(req.getParameter("sueldo"));

            // Actualiza los datos del gerente
            gerente.setCodigoGerente(codigoGerente);
            gerente.setNombreGerente(nombreGerente);
            gerente.setApellidoGerente(apellidoGerente);
            gerente.setCorreoGerente(correoGerente);
            gerente.setNumeroGerente(numeroGerente);
            gerente.setDireccionGerente(dirreccionGerente);
            gerente.setEstado(estado);
            gerente.setSueldo(sueldo);

            gerenteService.editarGerente(gerente);

            resp.sendRedirect(req.getContextPath() + "/gerente/");
        } else {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
    
    /**
     * Maneja las solicitudes HTTP PUT.
     * Utiliza el código del gerente en la URL para identificar y editar el gerente.
     *
     * @param req La solicitud HTTP.
     * @param resp La respuesta HTTP.
     * @throws ServletException Si ocurre un error durante el procesamiento de la solicitud.
     * @throws IOException Si ocurre un error de entrada/salida.
     */
    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pathInfo = req.getPathInfo();

        if (pathInfo != null && !pathInfo.equals("/")) {
            String[] pathParts = pathInfo.split("/");
            if (pathParts.length == 2) {
                int codigoGerente = Integer.parseInt(pathParts[1]);
                editarGerente(codigoGerente, req, resp);
            } else {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
            }
        } else {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }
    
    /**
     * Maneja la eliminación de un gerente existente.
     * Elimina el gerente con el código especificado y redirige al usuario.
     *
     * @param codigoGerente El código del gerente a eliminar.
     * @param req La solicitud HTTP.
     * @param resp La respuesta HTTP.
     * @throws ServletException Si ocurre un error durante el procesamiento de la solicitud.
     * @throws IOException Si ocurre un error de entrada/salida.
     */
    private void eliminarGerente(int codigoGerente, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Gerente gerente = gerenteService.buscarGerente(codigoGerente);
        if (gerente != null) {
            gerenteService.eliminarGerente(codigoGerente);
            resp.sendRedirect(req.getContextPath() + "/gerente/");
        } else {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
    
    /**
     * Maneja las solicitudes HTTP DELETE.
     * Utiliza el código del gerente en la URL para identificar y eliminar el gerente.
     *
     * @param req La solicitud HTTP.
     * @param resp La respuesta HTTP.
     * @throws ServletException Si ocurre un error durante el procesamiento de la solicitud.
     * @throws IOException Si ocurre un error de entrada/salida.
     */
    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pathInfo = req.getPathInfo();

        if (pathInfo != null && !pathInfo.equals("/")) {
            String[] pathParts = pathInfo.split("/");
            if (pathParts.length == 2) {
                int codigoGerente = Integer.parseInt(pathParts[1]);
                eliminarGerente(codigoGerente, req, resp);
            } else {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
            }
        } else {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }
}
