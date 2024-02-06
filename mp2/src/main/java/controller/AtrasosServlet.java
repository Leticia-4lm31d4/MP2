package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Atrasos;
import database.AtrasosDAO;

@WebServlet("/atrasoservlet")
public class AtrasosServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    //private AtrasosDAO atrasosDAO; 

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Configuração básica para obter uma conexão. Substitua com suas configurações reais.
        //Class.forName("com.mysql.jdbc.Driver");
        String conexao = "jdbc:mysql://localhost/busbus";
        String user = "localhost";
        String senha = "devweb";

        try (Connection conn = DriverManager.getConnection(conexao, user, senha)) {
            AtrasosDAO horarioDAO = new AtrasosDAO();

            // Chama o método que realiza a consulta e retorna um objeto com os resultados
           Atrasos resultado = horarioDAO.consultaAtrasos(conn);

            // Define os resultados como atributos no request para que possam ser acessados na JSP
            request.setAttribute("porcentagemAtrasados", resultado.getPorcentagemAtrasados());
            request.setAttribute("porcentagemNoHorario", resultado.getPorcentagemNoHorario());

            // Encaminha para a JSP
            request.getRequestDispatcher("/index.jsp").forward(request, response);

        } catch (SQLException e) {
            e.printStackTrace(); 
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Erro ao processar a consulta.");
        }
    }
}