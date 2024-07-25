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
@WebServlet(name = "OrdenServlet", value = {"/orden-servlet"})
@MultipartConfig
public class OrdenServlet extends HttpServlet {

    private OrdenService ordenService;

    @Override
    public void init() throws ServletException {
        super.init();
        this.ordenService = new OrdenService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Orden> ordenes = ordenService.listarOrden();
        req.setAttribute("ordenes", ordenes);
        req.getRequestDispatcher("./lista-productos/lista-productos.jsp").forward(req, resp);
    }
}
