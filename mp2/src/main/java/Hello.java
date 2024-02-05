import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class Hello extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String str = "conexao nao realizada";

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// faz conexão com BD
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// substitua pelos dados de acesso do seu BD
			String connection = "jdbc:mysql://localhost/busbus"; // nome do BD: busbus
			String user = "localhost", pass = "devweb";

			Connection conn = DriverManager.getConnection(connection, user, pass);
			str = "conexao realizada com sucesso"; // caso conexão seja realizada
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		PrintWriter response_writer = response.getWriter();
		response_writer.print(this.buildPage(str)); // envia HTML de resposta
		response_writer.close();
	} // fim service

	// método auxiliar apenas para montar um retorno
	private String buildPage(String str) {
		String page;

		page = "<!doctype html>"
				+ "<html>" + "<head>" + "<meta charset=\"UTF-8\">" + "<title>Testa Conexao</title>"
				+ "</head>" + "<body>" + "<h1>Testa conexao</h1>" + "<h2>Conexao: " + str + "!</h2>"
				+ "</body>" + "</html>";

		return page;
	}

}

/*import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class Hello extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.println("Hello from Servlet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}*/
