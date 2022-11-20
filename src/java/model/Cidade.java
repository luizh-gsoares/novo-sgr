package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Cidade {

    private Integer idCidade;
    private String  nome;
    private Integer idEstado;

    public Cidade(Integer idCidade, String nome, Integer idEstado) {
        this.idCidade = idCidade;
        this.nome = nome;
        this.idEstado = idEstado;
    }

    public Cidade() {
    }

    @Override
    public String toString() {
        return "Cidade{" + "idCidade=" + idCidade + ", nome=" + nome + ", idEstado=" + idEstado + '}';
    }

}
