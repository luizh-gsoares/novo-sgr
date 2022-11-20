
package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Especial {
    private Integer idEspecialidade;
    private String nome;

    public Especial(Integer idEspecialidade, String nome) {
        this.idEspecialidade = idEspecialidade;
        this.nome = nome;
    }

    public Especial() {
    }

    @Override
    public String toString() {
        return "Especial{" + "idEspecialidade=" + idEspecialidade + ", nome=" + nome + '}';
    }
    
    
}
