package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Estado {

    private Integer idEstado;
    private String nome;
    private String uf;
    private Integer idPais;

    public Estado(Integer idEstado, String nome, String uf, Integer idPais) {
        this.idEstado = idEstado;
        this.nome = nome;
        this.uf = uf;
        this.idPais = idPais;
    }

    public Estado() {
    }

    @Override
    public String toString() {
        return "Estado{" + "idEstado=" + idEstado + ", nome=" + nome + ", uf=" + uf + ", idPais=" + idPais + '}';
    }

}
