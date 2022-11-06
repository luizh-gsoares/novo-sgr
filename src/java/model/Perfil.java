package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Perfil {
    
    private Integer idPerfil;
    private String nome;
    private String dataCadastro;
    

    public Perfil(Integer idPerfil, String nome,  String dataCadastro) {
        this.idPerfil = idPerfil;
        this.nome = nome;
        this.dataCadastro = dataCadastro;
    }

    public Perfil() {
    }
    
    @Override
    public String toString() {
        return "Perfil{" + "idPerfil=" + idPerfil + ", nome=" + nome + ", dataCadastro=" + dataCadastro + '}';
    }

}
