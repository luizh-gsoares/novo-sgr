<%@page import="java.util.List"%>
<%@page import="dao.UsuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="/Templates/header.jsp"></jsp:include>

    <style>
        body{
            background-color: #083046;
        }

        #fundomenu {
            background-color: #08AEEA;
            background-image: linear-gradient(0deg, #08AEEA 0%, #2AF598 100%);
            color: aliceblue;
            font-family: Arial, Helvetica, sans-serif;
            border-radius: 7px;
            padding: 30px;
        }

        label {
            color: #1d6c48;

        }

        #fundomenu a {
            color: #fbfbfb;
        }

        #fundomenu button {
            background-color: #2AF598;
            border: none;
            -webkit-box-shadow: -5px 4px 35px -10px rgba(133, 133, 133, 0.64);
            -moz-box-shadow: -5px 4px 35px -10px rgba(133, 133, 133, 0.64);
            box-shadow: -5px 4px 35px -10px rgba(133, 133, 133, 0.64);
        }

        section{
            padding-top: 50px
        }
    </style>

    <section class="vh-100">
        <div class="container-fluid h-50">
            <div class="row d-flex justify-content-center align-items-center h-100">

                <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1" id="fundomenu">

                    <form action="cadastrarusuario" method="post"  needs-validation">
                        <div class="pb-5" align="center"><span>
                                <h1 class="display-6">Cadastrar Usuário</h1>
                            </span></div>

                        <!-- lOGIN input -->
                        <div class="col">
                            <label for="validationCustom01" class="form-label">Nome de usuário</label>
                            <input type="text" class="form-control" id="validationCustom01" name="login" placeholder="Digite o nome de usuário" required 
                                   oninvalid="this.setCustomValidity('Digite um nome de usuário válido')" 
                                   onchange="try {
                                               setCustomValidity('')
                                           } catch (e) {
                                           }">
                            
                            
                        </div>
                        <div class="col mt-3">
                            <label for="validationCustom02" class="form-label">Senha</label>
                            <input type="text" class="form-control" id="validationCustom02"placeholder="Mínimo de 8 caracteres" name="senha"  required 
                                   minlength="8" 
                                   oninvalid="this.setCustomValidity('Digite uma senha válida!')" 
                                   onchange="try {
                                               setCustomValidity('')
                                           } catch (e) {
                                           }">                        
                        </div>
                        

                        <input type="hidden" name="idEmpregado">
                        <!-- Password input -->

                        <div class="col mt-3">
                            <label class="form-label" for="form6Example1" required>Escolha o perfil</label> <br>
                            <select id="idUsuario" name="perfil" class="custom-select">
                            <jsp:useBean class="dao.UsuarioDAO" id="pdao"> </jsp:useBean>
                            <c:forEach items="${pdao.procuraTodosPerfis()}" var="perf">
                                <option value="${perf.idPerfil}">${perf.nome}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="text-center text-lg-start mt-4 pt-2">
                        <button type="submit" class="btn btn-primary btn-lg"
                                style="padding-left: 2.5rem; padding-right: 2.5rem;">Cadastrar</button>
                    </div> <br> <span> OU <a href="login">Faça o Login</a> </span>
                </form>
            </div>
        </div>
    </div>

</section>
<div
    class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
    <p style="color: red"> ${erro} </p>
    <!-- Copyright -->
    <div class="text-white mb-3 mb-md-0">
        Copyright © 2020. All rights reserved SHARK.
    </div>
</div>

    <script>
            if("value" = 0){
                alert("Escolha um empregado");
                return cadastrarusuario;
            }
     </script>
    
</section>
