import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/eliminarOrdenServlet")
public class EliminarOrdenServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int codigoOrden = Integer.parseInt(request.getParameter("codigoOrden"));

        try {
            Class.forName("com.mysql.jdbc.Driver"); // Cambia a tu driver de base de datos
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tu_base_de_datos", "tu_usuario", "tu_contraseña");
            String query = "DELETE FROM orden WHERE codigoOrden=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, codigoOrden);
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("eliminarOrden.jsp");
    }
}
