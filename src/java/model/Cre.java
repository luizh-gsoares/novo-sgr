package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Cre {
    private Integer idCre;
    private String nome;
    private String sigla;

    public Cre(Integer idCre, String nome, String sigla) {
        this.idCre = idCre;
        this.nome = nome;
        this.sigla = sigla;
    }

    public Cre() {
    }

    @Override
    public String toString() {
        return "Cre{" + "idCre=" + idCre + ", nome=" + nome + ", sigla=" + sigla + '}';
    }

}
