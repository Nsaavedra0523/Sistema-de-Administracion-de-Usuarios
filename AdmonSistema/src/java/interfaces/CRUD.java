package interfaces;

import modelo.Usuario;
import java.util.List;

public interface CRUD {
    public int agregarUsuario(Usuario u);
    public int actualizarDatos(Usuario u);
    public int eliminarDatos(int id);
    public Usuario listarDatos_Id(int id);
    public List<Usuario> listadoUsuarios();
}
