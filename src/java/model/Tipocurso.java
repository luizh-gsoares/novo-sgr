package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Tipocurso {

    private Integer idTipocurso;
    private String nome;
    private String dt_inativacao;

    public Tipocurso(Integer idTipocurso, String nome, String dt_inativacao) {
        this.idTipocurso = idTipocurso;
        this.nome = nome;
        this.dt_inativacao = dt_inativacao;
    }

    public Tipocurso() {
    }

    @Override
    public String toString() {
        return "Tipocurso{" + "idTipocurso=" + idTipocurso + ", nome=" + nome + ", dt_inativacao=" + dt_inativacao + '}';
    }

}
