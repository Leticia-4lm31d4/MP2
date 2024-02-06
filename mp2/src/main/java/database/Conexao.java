package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
    
    private String connection = "jdbc:mysql://localhost/busbus";
    private String user = "localhost", senha = "devweb";
   

    // realiza conexão com BD
    public Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(connection, user, senha);

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            throw new RuntimeException("Erro ao conectar", e);
        }
        
        return conn;
    }

}