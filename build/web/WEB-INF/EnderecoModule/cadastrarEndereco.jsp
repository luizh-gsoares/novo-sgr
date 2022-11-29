<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%%>
<!DOCTYPE html>
<jsp:include page="/Templates/header.jsp"></jsp:include>
<jsp:include page="/Templates/menu.jsp"></jsp:include>

    <title>Cadastrar endereço</title>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Cadastrar endereço</h1>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <form class="needs-validation" novalidate action="cadastrarendereco" method="post">

            <div class="container">

                <legend>Endereço</legend>
                <hr>

                <div class="row mb-4">
                    <div class="col">
                        <div class="form-outline">
                            <label class="form-label" for="form6Example1">idEmpregado</label>
                            <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="idEmpregado" value="${empregado.idEmpregado}" disabled/>             
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>CEP</label>
                        <input type="text" id="form6Example1" class="form-control" id="validationCustom01"
                               name="cep" value="${endereco.cep}" /> 
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1">Logradouro</label>
                        <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="logradouro" value="${endereco.logradouro}" />
                    </div>
                </div> 
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Complemento</label>
                        <input type="text" id="form6Example1" class="form-control" id="validationCustom01"
                               name="complemento" value="${endereco.complemento}"/>
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Cidade</label>
                        <select id="idCidade" name="idCidade" class="custom-select">
                            <jsp:useBean class="dao.EnderecoDAO" id="edao"> </jsp:useBean>
                            <c:forEach items="${edao.procuraTodasCidades()}" var="end">
                                <option value="${end.idCidade}">${end.nome}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                
                <!-- Submit button -->
                <button type="submit" class="btn btn-primary btn-block mb-4">Enviar</button>

            </div>
    </form>

    <jsp:include page="/Templates/footer.jsp"></jsp:include>
