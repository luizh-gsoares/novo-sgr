package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Estadocivil {

    private Integer idEstadocivil;
    private String tipo;

    public Estadocivil(Integer idEstadocivil, String tipo) {
        this.idEstadocivil = idEstadocivil;
        this.tipo = tipo;
    }

    public Estadocivil() {
    }

    @Override
    public String toString() {
        return "Estadocivil{" + "idEstadocivil=" + idEstadocivil + ", tipo=" + tipo + '}';
    }

}
