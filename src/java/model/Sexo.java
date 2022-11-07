package model;
import lombok.ToString;

@ToString
 
    public class Sexo {
    private int id;
    private String tipo;
 
    public Sexo(int id, String tipo) {
        super();
        this.id = id;
        this.tipo = tipo;
    }
 
    public int getId() {
        return id;
    }
 
    public void setId(int idsexo) {
        this.id = id;
    }
 
    public String getTipo() {
        return tipo;
    }
 
    public void setName(String name) {
        this.tipo = tipo;
    }
}