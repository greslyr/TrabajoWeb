package controlador;

import dao.UsuarioDAO;
import modelo.Usuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "srvUsuario", urlPatterns = {"/srvUsuario"})
public class srvUsuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        
        if (action != null) {
            switch (action) {
                case "login":
                    handleLogin(request, response);
                    break;
                case "register":
                    handleRegister(request, response);
                    break;
                default:
                    break;
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

    private void handleLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String contraseña = request.getParameter("contraseña");

        UsuarioDAO usuarioDAO = new UsuarioDAO();
        Usuario usr = usuarioDAO.obtenerUsuario(usuario, contraseña);

        if (usr != null) {
            if ("admin".equals(usr.getRol())) {
                response.sendRedirect("pagInicioAdmin.jsp");
            } else {
                response.sendRedirect("pagInicio.jsp");
            }
        } else {
            response.sendRedirect("IniciarSesion.jsp?error=1");
        }
    }

    private void handleRegister(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String correo = request.getParameter("correo");
        String password = request.getParameter("password");
        String repetirPassword = request.getParameter("repetirPassword");

        UsuarioDAO usuarioDAO = new UsuarioDAO();

        // Verifica si las contraseñas coinciden
        if (!password.equals(repetirPassword)) {
            response.sendRedirect("Registro.jsp?error=1");
            return;
        }

        // Verifica si el usuario ya existe
        if (usuarioDAO.usuarioExiste(usuario)) {
            response.sendRedirect("Registro.jsp?error=2");
            return;
        }

        // Verifica si el correo tiene un formato válido
        if (!correo.matches("^[A-Za-z0-9+_.-]+@(.+)$")) {
            response.sendRedirect("Registro.jsp?error=3");
            return;
        }

        // Crea un nuevo usuario
        Usuario nuevoUsuario = new Usuario();
        nuevoUsuario.setUsuario(usuario);
        nuevoUsuario.setCorreo(correo);
        nuevoUsuario.setContraseña(password);
        nuevoUsuario.setRol("user");

        usuarioDAO.crearUsuario(nuevoUsuario);

        response.sendRedirect("Principal.jsp");
    }
}
