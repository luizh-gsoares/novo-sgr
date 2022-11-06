package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Telefone {

    private Integer idTelefone;
    private Integer idEmpregado;
    private Integer telefoneResidencial;
    private Integer telefoneCelular;
    private Integer telefoneRecado;

    
    public Telefone(Integer idTelefone, Integer idEmpregado, Integer telefoneResidencial, Integer telefoneCelular, Integer telefoneRecado) {
    this.idEmpregado = idEmpregado;
    this.idTelefone  = idTelefone;
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
