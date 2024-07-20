import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/editarOrdenServlet")
public class EditarOrdenServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int codigoOrden = Integer.parseInt(request.getParameter("codigoOrden"));
        String excepciones = request.getParameter("excepciones");
        int codigoMesa = Integer.parseInt(request.getParameter("codigoMesa"));
        int codigoProducto = Integer.parseInt(request.getParameter("codigoProducto"));
        int codigoEmpleado = Integer.parseInt(request.getParameter("codigoEmpleado"));

        try {
            Class.forName("com.mysql.jdbc.Driver"); // Cambia a tu driver de base de datos
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tu_base_de_datos", "tu_usuario", "tu_contraseña");
            String query = "UPDATE orden SET excepciones=?, codigoMesa=?, codigoProducto=?, codigoEmpleado=? WHERE codigoOrden=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, excepciones);
            ps.setInt(2, codigoMesa);
            ps.setInt(3, codigoProducto);
            ps.setInt(4, codigoEmpleado);
            ps.setInt(5, codigoOrden);
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("verOrden.jsp");
    }
}
