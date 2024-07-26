package serverlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Harol
 */
@WebServlet(name = "RecepcionServerlet", value = {"/recepcion-serverlet"})
@MultipartConfig
public class RecepcionServerlet extends HttpServlet {

        private RecepcionServerlet recepcionService;
        
        @Override
        public void init() throws ServletException{
           super.init();
        this.recepcionService = new RecepcionService();
        
    }
        
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
            List<Recepcion> recepcion = recepcionService.listarProductos();
            recepcion.forEach(p -> System.out.println(p));
            req.setAttribute("recepcion", recepcion);
            req.getRequestDispatcher("/recepcion/recepcion.jsp").forward(req, resp);
        }
        
        private void añadirRecepcion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            int cantidadPersonas = Integer.parseInt(request.getParameter("numeroAsientos"));
            String nombreCliente = request.getParameter("nombreCliente");
            String fecha = request.getParameter("fecha");
            String hora = request.getParameter("hora");
            
            Recepcion recepcion = new Recepcion(cantidadPersonas,nombreCliente,fecha,hora);
            productoService.añadirRecepcion(recepcion);
            
            response.sendRedirect(request.getContextPath()+ "/");
        }
        
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
            String pathInfo = request.getPathInfo();
            
            if (pathInfo == null || pathInfo.equals("/")){
                añadirRecepcion(request, response);
            } else {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST);
            }
        }
// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
