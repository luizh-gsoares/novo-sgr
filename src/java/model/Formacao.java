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

    public Formacao(Integer idFormacao, Integer idEmpregado, Integer id_tipocurso, String curso, String instituicao, Integer semestre, String dtInicio, String dtFim) {
        this.idFormacao = idFormacao;
        this.idEmpregado = idEmpregado;
        this.idTipocurso = id_tipocurso;
        this.curso = curso;
        this.instituicao = instituicao;
        this.semestre = semestre;
        this.dtInicio = dtInicio;
        this.dtFim = dtFim;
    }

    public Formacao() {
    }

    @Override
    public String toString() {
        return "Formacao{" + "idFormacao=" + idFormacao + ", idEmpregado=" + idEmpregado + ", id_tipocurso=" + idTipocurso + ", curso=" + curso + ", instituicao=" + instituicao + ", semestre=" + semestre + ", dtInicio=" + dtInicio + ", dtFim=" + dtFim + '}';
    }

}
