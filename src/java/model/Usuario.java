package model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class Usuario {

    private Integer idUsuario;
    private String login;
    private String senha;
    private Integer idEmpregado;
    private Integer idPerfil;
    private Integer status;

    public Usuario(Integer idUsuario, String login, String senha, Integer idEmpregado, Integer idPerfil, Integer status) {
        this.idUsuario = idUsuario;
        this.login = login;
        this.senha = senha;
        this.idEmpregado = idEmpregado;
        this.idPerfil = idPerfil;
        this.status = status;
    }

    public Usuario() {
    }

    @Override
    public String toString() {
        return "Usuario{" + "idUsuario=" + idUsuario + ", login=" + login + ", senha=" + senha + ", idEmpregado=" + idEmpregado + ", idPerfil=" + idPerfil + ", status=" + status + '}';
    }

}
