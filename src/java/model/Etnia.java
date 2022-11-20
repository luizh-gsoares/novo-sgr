package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Etnia {

    private Integer idEtnia;
    private String nome;

    public Etnia(Integer idEtnia, String nome) {
        this.idEtnia = idEtnia;
        this.nome = nome;
    }

    public Etnia() {
    }

    @Override
    public String toString() {
        return "Etnia{" + "idEtnia=" + idEtnia + ", nome=" + nome + '}';
    }

}
