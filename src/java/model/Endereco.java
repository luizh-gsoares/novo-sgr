package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Endereco {

    private Integer idEndereco;
    private String cep;
    private String logradouro;
    private String complemento;
    private Integer idCidade;
    private Integer idEmpregado;
    private Integer status;

    public Endereco(Integer idEndereco, String cep, String logradouro, String complemento, Integer idCidade, Integer idEmpregado, Integer status) {
        this.idEndereco = idEndereco;
        this.cep = cep;
        this.logradouro = logradouro;
        this.complemento = complemento;
        this.idCidade = idCidade;
        this.idEmpregado = idEmpregado;
        this.status = status;
    }

    public Endereco() {
    }

    @Override
    public String toString() {
        return "Endereco{" + "idEndereco=" + idEndereco + ", cep=" + cep + ", logradouro=" + logradouro + ", complemento=" + complemento + ", idCidade=" + idCidade + ", idEmpregado=" + idEmpregado + ", status=" + status + '}';
    }

}
