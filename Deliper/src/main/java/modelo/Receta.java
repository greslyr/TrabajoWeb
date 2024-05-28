package modelo;


public class Receta {
    int id;
    String titulo;
    String descripcion;
    String preparacion;

    public Receta(){
        
    }
    
    public Receta(int id, String titulo, String descripcion, String preparacion) {
        this.id = id;
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.preparacion = preparacion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getPreparacion() {
        return preparacion;
    }

    public void setPreparacion(String preparacion) {
        this.preparacion = preparacion;
    }
    
    
}
