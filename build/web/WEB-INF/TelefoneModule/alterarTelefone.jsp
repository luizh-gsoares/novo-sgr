<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%%>
  <!DOCTYPE html>
  <jsp:include page="/Templates/header.jsp"></jsp:include>
  <jsp:include page="/Templates/menu.jsp"></jsp:include>

  <title>Alterar Telefone</title>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Alterar Telefone</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <form action="alterartelefone" method="post">

      <div class="container">

        <legend>Telefones</legend>
        <hr>
        <!-- Campos Dados Pessoais -->

        <div class="row mb-4">
          <div class="col">
            <div class="form-outline">
              <input type="hidden" id="idTelefone" class="form-control" name="idTelefone" value="${telefone.idTelefone}"/>             
            </div>
          </div>
          <div class="col">
            <div class="form-outline">
              <input type="hidden" id="idEmpregado" class="form-control" name="idEmpregado" value="${telefone.idEmpregado}"/>
            </div>
          </div>
          <div class="col">
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Telefone Residencial</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01"
                name="telefoneResidencial" value="${telefone.telefoneResidencial}"/>
            </div>
          </div>
          <div class="col">
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Telefone Celular</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01"
                name="telefoneCelular" value="${telefone.telefoneCelular}"/>
            </div>
          </div>
          <div class="col">
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Telefone Recado</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01"
                name="telefoneRecado" value="${telefone.telefoneRecado}" />
            </div>
          </div>
        </div>


        <!-- Submit button -->
        <button type="submit" class="btn btn-primary btn-block mb-4">Enviar</button>
        
      </div>
    </form>

    <jsp:include page="/Templates/footer.jsp"></jsp:include>
