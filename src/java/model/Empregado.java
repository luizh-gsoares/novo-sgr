package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class Empregado {

    private Integer idEmpregado;
    private String nome;
    private String matricula;
    private String nomeSocial;
    private Integer etnia;
    private Integer nacionalidade;
    private Integer naturalidade;
    private String uf;
    private String dataNasc;
    private Integer sexo;
    private Integer estadoCivil;
    private String rg;
    private String dataExpedicao;
    private String orgaoExpedidor;
    private String cpf;
    private String zonaEleitoral;
    private String secao;
    private String tituloEleitoral;
    private String email;
    private String nomeConjugue;
    private String nomePai;
    private String nomeMae;
    private Integer especial;
    private Integer status;

    public Empregado(Integer idEmpregado, String nome, String matricula, String nomeSocial, Integer etnia, Integer nacionalidade, Integer naturalidade, String uf, String dataNasc, Integer sexo, Integer estadoCivil, String rg, String dataExpedicao, String orgaoExpedidor, String cpf, String zonaEleitoral, String secao, String tituloEleitoral, String email, String nomeConjugue, String nomePai, String nomeMae, Integer especial, Integer status) {
        this.idEmpregado = idEmpregado;
        this.nome = nome;
        this.matricula = matricula;
        this.nomeSocial = nomeSocial;
        this.etnia = etnia;
        this.nacionalidade = nacionalidade;
        this.naturalidade = naturalidade;
        this.uf = uf;
        this.dataNasc = dataNasc;
        this.sexo = sexo;
        this.estadoCivil = estadoCivil;
        this.rg = rg;
        this.dataExpedicao = dataExpedicao;
        this.orgaoExpedidor = orgaoExpedidor;
        this.cpf = cpf;
        this.zonaEleitoral = zonaEleitoral;
        this.secao = secao;
        this.tituloEleitoral = tituloEleitoral;
        this.email = email;
        this.nomeConjugue = nomeConjugue;
        this.nomePai = nomePai;
        this.nomeMae = nomeMae;
        this.especial = especial;
        this.status = status;
    }

    public Empregado() {
    }

    @Override
    public String toString() {
        return "Empregado{" + "idEmpregado=" + idEmpregado + ", nome=" + nome + ", matricula=" + matricula + ", nomeSocial=" + nomeSocial + ", etnia=" + etnia + ", nacionalidade=" + nacionalidade + ", naturalidade=" + naturalidade + ", uf=" + uf + ", dataNasc=" + dataNasc + ", sexo=" + sexo + ", estadoCivil=" + estadoCivil + ", rg=" + rg + ", dataExpedicao=" + dataExpedicao + ", orgaoExpedidor=" + orgaoExpedidor + ", cpf=" + cpf + ", zonaEleitoral=" + zonaEleitoral + ", secao=" + secao + ", tituloEleitoral=" + tituloEleitoral + ", email=" + email + ", nomeConjugue=" + nomeConjugue + ", nomePai=" + nomePai + ", nomeMae=" + nomeMae + ", especial=" + especial + ", status=" + status + '}';
    }

}
