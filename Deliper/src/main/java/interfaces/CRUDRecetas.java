package interfaces;

import java.util.List;
import modelo.Receta;


public interface CRUDRecetas {
    public List listar();
    public Receta list(int id);
    public boolean add(Receta rec);
    public boolean edit(Receta rec);
    public boolean eliminar(int id);
}
