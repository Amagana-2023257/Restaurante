
package com.estancia.restaurante.servlet;

import com.estancia.restaurante.model.Orden;
import com.estancia.restaurante.service.OrdenService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


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
