package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Formacao {

    private Integer idFormacao;
    private Integer idEmpregado;
    private Integer idTipocurso;
    private String curso;
    private String instituicao;
    private Integer semestre;
    private String dtInicio;
    private String dtFim;
    private Integer status;

    public Formacao(Integer idFormacao, Integer idEmpregado, Integer idTipocurso, String curso, String instituicao, Integer semestre, String dtInicio, String dtFim, Integer status) {
        this.idFormacao = idFormacao;
        this.idEmpregado = idEmpregado;
        this.idTipocurso = idTipocurso;
        this.curso = curso;
        this.instituicao = instituicao;
        this.semestre = semestre;
        this.dtInicio = dtInicio;
        this.dtFim = dtFim;
        this.status = status;
    }

    public Formacao() {
    }

    @Override
    public String toString() {
        return "Formacao{" + "idFormacao=" + idFormacao + ", idEmpregado=" + idEmpregado + ", idTipocurso=" + idTipocurso + ", curso=" + curso + ", instituicao=" + instituicao + ", semestre=" + semestre + ", dtInicio=" + dtInicio + ", dtFim=" + dtFim + ", status=" + status + '}';
    }

}
