package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Telefone {

    private Integer idTelefone;
    private Integer idEmpregado;
    private String telefoneResidencial;
    private String telefoneCelular;
    private String telefoneRecado;

    public Telefone(Integer idTelefone, Integer idEmpregado, String telefoneResidencial, String telefoneCelular, String telefoneRecado) {
        this.idTelefone = idTelefone;
        this.idEmpregado = idEmpregado;
        this.telefoneResidencial = telefoneResidencial;
        this.telefoneCelular = telefoneCelular;
        this.telefoneRecado = telefoneRecado;
    }

    public Telefone() {
    }

    @Override
    public String toString() {
        return "Telefone{" + "idTelefone=" + idTelefone + ", idEmpregado=" + idEmpregado + ", telefoneResidencial=" + telefoneResidencial + ", telefoneCelular=" + telefoneCelular + ", telefoneRecado=" + telefoneRecado + '}';
    }

}
