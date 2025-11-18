package modelo;
import java.sql.Connection;

public class TestConexion {
    public static void main(String[] args) {
        Conexion cn = new Conexion();
        Connection con = cn.crearConexion();
        if (con != null) {
            System.out.println("✅ Conexión establecida correctamente.");
        } else {
            System.out.println("❌ No se pudo conectar a la base de datos.");
        }
    }
}
