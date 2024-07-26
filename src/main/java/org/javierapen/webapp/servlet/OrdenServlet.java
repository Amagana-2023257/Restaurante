/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.javierapen.webapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import org.javierapen.webapp.model.Orden;
import org.javierapen.webapp.service.OrdenService;

/**
 *
 * @author 50258
 */
// Define la URL a la que el servlet responde.
@WebServlet(name = "OrdenServlet", value = {"/orden-servlet"})
//Indica que el servlet puede manejar solicitudes multipart/form-data, típicamente utilizadas para subir archivos.
@MultipartConfig
public class OrdenServlet extends HttpServlet {

    private OrdenService ordenService;

    /*
    Inicializa el servlet y crea una instancia de OrdenService para
    ser utilizada en el manejo de solicitudes.
    */
    @Override
    public void init() throws ServletException {
        super.init();
        this.ordenService = new OrdenService();
    }

    /*
    Maneja las solicitudes GET. Obtiene la lista de órdenes 
    mediante OrdenService, las añade como atributo a la solicitud y despacha la
    solicitud a la página JSP lista-orden.jsp para mostrar la información.
    */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Orden> ordenes = ordenService.listarOrden();
        req.setAttribute("ordenes", ordenes);
        req.getRequestDispatcher("listar-orden/lista-orden.jsp").forward(req, resp);
    }
}
