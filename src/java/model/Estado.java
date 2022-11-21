package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Estado {

    private Integer idEstado;
    private String nome;
    private String uf;
    private Integer pais;

    public Estado(Integer idEstado, String nome, String uf, Integer pais) {
        this.idEstado = idEstado;
        this.nome = nome;
        this.uf = uf;
        this.pais = pais;
    }

    public Estado() {
    }

    @Override
    public String toString() {
        return "Estado{" + "idEstado=" + idEstado + ", nome=" + nome + ", uf=" + uf + ", pais=" + pais + '}';
    }

}
