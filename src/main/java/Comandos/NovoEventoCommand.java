package Comandos;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NovoEventoCommand implements Comando {

    @Override
    public void exec(HttpServletRequest request, HttpServletResponse response) {
        try {
            String id = request.getParameter("usuario");
            request.setAttribute("usuario", id);
            RequestDispatcher despachante = request.getRequestDispatcher("/WEB-INF/novoEvento.jsp");
            despachante.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(RegistroCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
