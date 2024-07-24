package com.josesanchez.proyectoto.servlet;

import com.josesanchez.proyectoto.model.Gerente;
import com.josesanchez.proyectoto.service.GerenteService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "GerenteServlet", value = {"/gerente-servlet"})
@MultipartConfig
public class GerenteServlet extends HttpServlet {

    //Objeto del gerente servicio
    private GerenteService gerenteService;

    //Metodo init del Http
    @Override
    public void init() throws ServletException {
        super.init();
        this.gerenteService = new GerenteService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Gerente> gerente = gerenteService.listarGerente();
        gerente.forEach(p -> System.out.println(p));
        req.setAttribute("gerente", gerente);
        req.getRequestDispatcher("/lista-gerente/lista-gerente.jsp").forward(req, resp);
    }

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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathInfo = request.getPathInfo();

        if (pathInfo == null || pathInfo.equals("/")) {
            crearGerente(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }

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
    
    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pathInfo = req.getPathInfo();

        if (pathInfo != null && !pathInfo.equals("/")) {
            String[] pathParts = pathInfo.split("/");
            if (pathParts.length == 2) {
                int ID = Integer.parseInt(pathParts[1]);
                editarGerente(ID, req, resp);
            } else {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
            }
        } else {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }
    
    private void eliminarGerente(int codigoGerente, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Gerente gerente = gerenteService.buscarGerente(codigoGerente);
        if (gerente != null) {
            gerenteService.eliminarGerente(codigoGerente);
            resp.sendRedirect(req.getContextPath() + "/gerente/");
        } else {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
    
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
