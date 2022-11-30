<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<jsp:include page="/Templates/header.jsp"></jsp:include>
<jsp:include page="/Templates/menu.jsp"></jsp:include>

    <title>Cadastrar Experiência</title>

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

        <p value="{$erro}"></p>
        <form action="cadastrarexperiencia" method="post">

            <div class="container">
                <legend>Experiência</legend>
                <hr>
                <!-- Campos Dados Pessoais -->
                <input type="hidden" class="form-control" name="idEmpregado" value="${empregado.idEmpregado}"/>

            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Função</label>
                        <input type="text" class="form-control"  name="funcao"/>
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1">Tipo Vinculo</label>
                        <select id="tipoVinculo" name="tipoVinculo" class="custom-select">
                            <jsp:useBean class="dao.ExperienciaDAO" id="tipdao"> </jsp:useBean>
                            <c:forEach items="${tipdao.procuraTodosTipovinculos()}" var="tip">
                                <option value="${tip.idTipovinculo}">${tip.tipo}</option>
                            </c:forEach>
                        </select></div>
                </div> 

                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Carga Horária</label>
                        <input type="text"  class="form-control" name="cargaHoraria"/>
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Local</label>
                        <input type="text" class="form-control" name="local" />
                    </div>
                </div>

                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1">CRE</label>
                        <select id="cre" name="cre" class="custom-select">
                            <c:forEach items="${tipdao.procuraTodosCres()}" var="cr">
                                <option value="${cr.idCre}">${cr.nome}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div> 

                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Data de Entrada</label>
                        <input type="date" class="form-control" name="dtEntrada" />
                    </div>
                </div>

                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Data de Saida</label>
                        <input type="date" class="form-control" name="dtSaida""/>
                    </div>
                </div>
            </div>


            <!-- Submit button -->
            <button type="submit" class="btn btn-primary btn-block mb-4">Enviar</button>

        </div>
    </form>

    <jsp:include page="/Templates/footer.jsp"></jsp:include>
