import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/agregarOrdenServlet")
public class AgregarOrdenServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int codigoOrden = Integer.parseInt(request.getParameter("codigoOrden"));
        String excepciones = request.getParameter("excepciones");
        int codigoMesa = Integer.parseInt(request.getParameter("codigoMesa"));
        int codigoProducto = Integer.parseInt(request.getParameter("codigoProducto"));
        int codigoEmpleado = Integer.parseInt(request.getParameter("codigoEmpleado"));

        try {
            Class.forName("com.mysql.jdbc.Driver"); // Cambia a tu driver de base de datos
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tu_base_de_datos", "tu_usuario", "tu_contraseña");
            String query = "INSERT INTO orden (codigoOrden, excepciones, codigoMesa, codigoProducto, codigoEmpleado) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, codigoOrden);
            ps.setString(2, excepciones);
            ps.setInt(3, codigoMesa);
            ps.setInt(4, codigoProducto);
            ps.setInt(5, codigoEmpleado);
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("verOrden.jsp");
    }
}
