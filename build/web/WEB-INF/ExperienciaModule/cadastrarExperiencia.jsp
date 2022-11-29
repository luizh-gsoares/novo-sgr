<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%%>
<!DOCTYPE html>
<jsp:include page="/Templates/header.jsp"></jsp:include>
<jsp:include page="/Templates/menu.jsp"></jsp:include>

    <title>Cadastrar Telefone</title>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Cadastrar Experiência</h1>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <form class="needs-validation" novalidate action="cadastrarexperiencia" method="post">

            <div class="container">

                <legend>Experiência</legend>
                <hr>
                <!-- Campos Dados Pessoais -->

                <div class="row mb-4">
                    <div class="col">
                        <div class="form-outline">
                            <input type="hidden" id="form6Example1" class="form-control" id="validationCustom01" name="idExperiencia" value="${experiencia.idExperiencia}" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">                          
                            <input type="hidden" id="form6Example1" class="form-control" id="validationCustom01" name="idEmpregado" value="${empregado.idEmpregado}" />
                        </div>
                    </div>
                </div>
                    <div class="row mb-4">
                        <div class="col">
                            <div class="form-outline">
                                <label class="form-label" for="form6Example1" required>Função</label>
                                <input type="text" id="form6Example1" class="form-control" id="validationCustom01"
                                       name="funcao" value="${experiencia.funcao}" />
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-outline">
                                <label class="form-label" for="form6Example1" required>Local</label>
                                <input type="number" id="form6Example1" class="form-control" id="validationCustom01"
                                       name="local" value="${experiencia.local}" />
                            </div>
                        </div>

                        <div class="col">
                            <div class="form-outline">
                                <label class="form-label" for="form6Example1" required>CRE</label>
                                <input type="text" id="form6Example1" class="form-control" id="validationCustom01"
                                       name="cre" value="${experiencia.cre}" />
                            </div>
                        </div>
                       
                        <div class="col">
                            <div class="form-outline">
                                <label class="form-label" for="form6Example1" required>Data de Entrada</label>
                                <input type="text" id="form6Example1" class="form-control" id="validationCustom01"
                                       name="dtEntrada" value="${experiencia.dtEntrada}" />
                            </div>
                        </div>

                        <div class="col">
                            <div class="form-outline">
                                <label class="form-label" for="form6Example1" required>Data de Saida</label>
                                <input type="text" id="form6Example1" class="form-control" id="validationCustom01"
                                       name="dtSaida" value="${experiencia.dtSaida}"/>
                            </div>
                        </div>
                    </div>


                    <!-- Submit button -->
                    <button type="submit" class="btn btn-primary btn-block mb-4">Enviar</button>

                </div>
        </form>

    <jsp:include page="/Templates/footer.jsp"></jsp:include>
