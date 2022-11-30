package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Tipovinculo {
    private Integer idTipovinculo;
    private String tipo;
    private String dt_inativacao;

    public Tipovinculo(Integer idTipovinculo, String tipo, String dt_inativacao) {
        this.idTipovinculo = idTipovinculo;
        this.tipo = tipo;
        this.dt_inativacao = dt_inativacao;
    }

    public Tipovinculo() {
    }

    @Override
    public String toString() {
        return "Tipovinculo{" + "idTipovinculo=" + idTipovinculo + ", tipo=" + tipo + ", dt_inativacao=" + dt_inativacao + '}';
    }
    
}
