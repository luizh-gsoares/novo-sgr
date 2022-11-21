package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Perfil {
    
    private Integer idPerfil;
    private String nome;
    private String senha;
    private String dataCadastro;

    public Perfil(Integer idPerfil, String nome, String senha, String dataCadastro) {
        this.idPerfil = idPerfil;
        this.nome = nome;
        this.senha = senha;
        this.dataCadastro = dataCadastro;
    }

    public Perfil() {
    }

    @Override
    public String toString() {
        return "Perfil{" + "idPerfil=" + idPerfil + ", nome=" + nome + ", senha=" + senha + ", dataCadastro=" + dataCadastro + '}';
    }
    


}
