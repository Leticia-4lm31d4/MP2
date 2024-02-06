package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AtrasosDAO {

    String sql = "SELECT " +
                     "    (COUNT(CASE WHEN horario_real > horario_chegada THEN 1 END) * 100 / COUNT(*)) AS porcentagem_atrasados, " +
                     "    (COUNT(CASE WHEN horario_real = horario_chegada THEN 1 END) * 100 / COUNT(*)) AS porcentagem_no_horario " +
                     "FROM horario";

    public void consultaAtrasos(Connection conn) throws ClassNotFoundException{
        try {
            PreparedStatement consulta = conn.prepareStatement(sql);
            ResultSet rs = consulta.executeQuery(sql);

            if (rs.next()) {
                double porcentagemAtrasados = rs.getDouble(1);
                double porcentagemNoHorario = rs.getDouble(2);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}