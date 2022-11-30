<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%%>
<!DOCTYPE html>
<jsp:include page="/Templates/header.jsp"></jsp:include>
<jsp:include page="/Templates/menu.jsp"></jsp:include>

    <title>Cadastrar Formação</title>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Cadastrar formação</h1>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <form action="cadastrarformacao" method="post">

            <div class="container">

                <legend>Formação</legend>
                <hr>
                <!-- Campos Dados Pessoais -->
                <div class="row mb-4">
                    <div class="col">
                        <div class="form-outline">
                            <input type="hidden" class="form-control" name="idEmpregado" value="${empregado.idEmpregado}"/></div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Curso</label>
                        <input type="text" id="form6Example1" class="form-control" id="validationCustom01"
                               name="curso" /> 
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1">Tipo Curso</label>
                        <select id="id_tipocurso" name="idTipocurso" class="custom-select">
                            <jsp:useBean class="dao.FormacaoDAO" id="fordao"> </jsp:useBean>
                            <c:forEach items="${fordao.procuraTodosTipocursos()}" var="form">
                                <option value="${form.idTipocurso}">${form.nome}</option>
                            </c:forEach>
                        </select></div>
                </div> 
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Instituição</label>
                        <input type="text" id="form6Example1" class="form-control" id="validationCustom01"
                               name="instituicao"/>
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Semestre Atual</label>
                        <input type="number" id="form6Example1" class="form-control" id="validationCustom01"
                               name="semestre"/>
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Data Inicio</label>
                        <input type="date" id="form6Example1" class="form-control" id="validationCustom01"
                               name="dtInicio"/>
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Data Fim</label>
                        <input type="date" id="form6Example1" class="form-control" id="validationCustom01"
                               name="dtFim"/>
                    </div>
                </div>
            </div>

            <!-- Submit button -->
            <button type="submit" class="btn btn-primary btn-block mb-4">Enviar</button>

        </div>
    </form>

    <jsp:include page="/Templates/footer.jsp"></jsp:include>
