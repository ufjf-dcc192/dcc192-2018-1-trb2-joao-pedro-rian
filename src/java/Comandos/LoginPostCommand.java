package Comandos;

import DAOs.ParticipanteDAO;
import Modelo.Participante;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginPostCommand implements Comando {

    @Override
    public void exec(HttpServletRequest request, HttpServletResponse response) {
        try {
            String usuario = request.getParameter("usuario");
            String senha = request.getParameter("senha");
            ParticipanteDAO dao = ParticipanteDAO.getInstance();
            Participante participante = dao.getUsuario(usuario, senha);
            if (participante == null) {
                request.setAttribute("erroLogin", true);
                RequestDispatcher despachante = request.getRequestDispatcher("/WEB-INF/login.jsp");
                despachante.forward(request, response);
                
            } else {
                request.setAttribute("usuario", participante.getCodigo());
                RequestDispatcher despachante = request.getRequestDispatcher("/WEB-INF/index.jsp");
                despachante.forward(request, response);
            }
        } catch (ServletException | IOException | SQLException ex) {
            Logger.getLogger(LoginPostCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}