package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Funcao {
    private Integer idFuncao;
    private String tipo;
    private String dt_inativacao;

    public Funcao(Integer idFuncao, String tipo, String dt_inativacao) {
        this.idFuncao = idFuncao;
        this.tipo = tipo;
        this.dt_inativacao = dt_inativacao;
    }

    public Funcao() {

    }

    @Override
    public String toString() {
        return "Funcao{" + "idFuncao=" + idFuncao + ", tipo=" + tipo + ", dt_inativacao=" + dt_inativacao + '}';
    }

}
