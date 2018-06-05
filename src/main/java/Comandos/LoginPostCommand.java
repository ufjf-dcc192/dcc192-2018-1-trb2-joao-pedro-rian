package Comandos;

import DAOs.EventoDAO;
import DAOs.ParticipanteDAO;
import Modelo.Evento;
import Modelo.Participante;
import com.google.gson.Gson;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
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
                EventoDAO eventodao = EventoDAO.getInstance();
                List<Evento> eventos = eventodao.listAll();
                Gson gson = new Gson();
                String eventosJson = gson.toJson(eventos);
                request.setAttribute("eventosJson", eventosJson);
                request.setAttribute("usuario", participante.getCodigo());
                RequestDispatcher despachante = request.getRequestDispatcher("/WEB-INF/index.jsp");
                despachante.forward(request, response);
            }
        } catch (ServletException | IOException | SQLException ex) {
            Logger.getLogger(LoginPostCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
