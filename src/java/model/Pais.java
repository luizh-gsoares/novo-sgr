package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Pais {

    private Integer id;
    private String nome;
    private String nome_pt;
    private String sigla;
    private Integer bacen;

    public Pais(Integer id, String nome, String nome_pt, String sigla, Integer bacen) {
        this.id = id;
        this.nome = nome;
        this.nome_pt = nome_pt;
        this.sigla = sigla;
        this.bacen = bacen;
    }

    public Pais() {
    }

    @Override
    public String toString() {
        return "Pais{" + "id=" + id + ", nome=" + nome + ", nome_pt=" + nome_pt + ", sigla=" + sigla + ", bacen=" + bacen + '}';
    }

}
