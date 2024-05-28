package controlador;

import dao.RecetaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Receta;

public class srvReceta extends HttpServlet {

    String listar="VistasAdmin/listar.jsp";
    String add="VistasAdmin/add.jsp";
    String edit="VistasAdmin/edit.jsp";
    Receta rec=new Receta();
    RecetaDAO dao=new RecetaDAO();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Prueba</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Prueba at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;
        }else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }
        else if(action.equalsIgnoreCase("agregar")){
            String tit=request.getParameter("txtTit");
            String desc=request.getParameter("txtDesc");
            String prep=request.getParameter("txtPrep");
            rec.setTitulo(tit);
            rec.setDescripcion(desc);
            rec.setPreparacion(prep);
            dao.add(rec);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idrec", request.getParameter("id"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("actualizar")){
            int id=Integer.parseInt(request.getParameter("txtId"));
            String tit=request.getParameter("txtTit");
            String desc=request.getParameter("txtDesc");
            String prep=request.getParameter("txtPrep");
            rec.setId(id);
            rec.setTitulo(tit);
            rec.setDescripcion(desc);
            rec.setPreparacion(prep);
            dao.edit(rec);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
            int id=Integer.parseInt(request.getParameter("id"));
            rec.setId(id);
            dao.eliminar(id);
            acceso=listar;
            
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
