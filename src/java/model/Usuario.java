package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class Usuario {

    private String login;
    private String senha;
    private Integer idEmpregado;
    private Integer idUsuario;
    private Integer idPerfil;

    public Usuario(String login, String senha, Integer idEmpregado, Integer idUsuario, Integer idPerfil) {
        this.login = login;
        this.senha = senha;
        this.idEmpregado = idEmpregado;
        this.idUsuario = idUsuario;
        this.idPerfil = idPerfil;
    }

    public Usuario() {
    }

    @Override
    public String toString() {
        return "Usuario{" + "login=" + login + ", senha=" + senha + ", idEmpregado=" + idEmpregado + ", idUsuario=" + idUsuario + ", idPerfil=" + idPerfil + '}';
    }



}
