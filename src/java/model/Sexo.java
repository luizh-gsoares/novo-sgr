package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Sexo {

    private Integer idSexo;
    private String sexo;

    public Sexo(Integer idSexo, String sexo) {
        this.idSexo = idSexo;
        this.sexo = sexo;
    }

    public Sexo() {
    }

    @Override
    public String toString() {
        return "Sexo{" + "idSexo=" + idSexo + ", sexo=" + sexo + '}';
    }

}
