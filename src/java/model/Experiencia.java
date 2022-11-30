package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Experiencia {

    private Integer idExperiencia;
    private Integer idEmpregado;
    private String funcao;
    private Integer tipoVinculo;
    private String cargaHoraria;
    private String local;
    private Integer cre;
    private String dtSaida;
    private String dtEntrada;

    public Experiencia(Integer idExperiencia, Integer idEmpregado, String funcao, Integer tipoVinculo, String cargaHoraria, String local, Integer cre, String dtSaida, String dtEntrada) {
        this.idExperiencia = idExperiencia;
        this.idEmpregado = idEmpregado;
        this.funcao = funcao;
        this.tipoVinculo = tipoVinculo;
        this.cargaHoraria = cargaHoraria;
        this.local = local;
        this.cre = cre;
        this.dtSaida = dtSaida;
        this.dtEntrada = dtEntrada;
    }

    public Experiencia() {
    }

    @Override
    public String toString() {
        return "Experiencia{" + "idExperiencia=" + idExperiencia + ", idEmpregado=" + idEmpregado + ", funcao=" + funcao + ", tipoVinculo=" + tipoVinculo + ", cargaHoraria=" + cargaHoraria + ", local=" + local + ", cre=" + cre + ", dtSaida=" + dtSaida + ", dtEntrada=" + dtEntrada + '}';
    }
    
    

}
