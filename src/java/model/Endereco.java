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

    public Endereco(Integer idEndereco, String cep, String logradouro, String complemento, Integer idCidade) {
        this.idEndereco = idEndereco;
        this.cep = cep;
        this.logradouro = logradouro;
        this.complemento = complemento;
        this.idCidade = idCidade;
    }

    public Endereco() {
    }

    @Override
    public String toString() {
        return "Endereco{" + "idEndereco=" + idEndereco + ", cep=" + cep + ", logradouro=" + logradouro + ", complemento=" + complemento + ", idCidade=" + idCidade + '}';
    }

}
