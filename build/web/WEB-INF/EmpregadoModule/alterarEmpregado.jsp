<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%%>
  <!DOCTYPE html>
  <jsp:include page="/Templates/header.jsp"></jsp:include>
  <jsp:include page="/Templates/menu.jsp"></jsp:include>

  <title>Alterar Empregado</title>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Alterar Empregado</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <form class="needs-validation" novalidate action="alterarempregado" method="post">

      <div class="container">

        <legend>Empregados</legend>
        <hr>
        <!-- Campos Dados Pessoais -->

        <div class="row mb-4">
          <div class="col">
            <div class="form-outline">
              <input type="hidden" id="form6Example1" class="form-control" id="validationCustom01" name="idEmpregado" value="${empregado.idEmpregado}">
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >Nome</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="nome" required  value="${empregado.nome}">
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >Matricula</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="matricula" required value="${empregado.matricula}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >Nome Social</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01"  required name="nomeSocial" value="${empregado.nomeSocial}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >Nacionalidade</label> 
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" required name="nacionalidade" value="${nacionalidade.nome}">
              
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >Naturalidade</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" required name="naturalidade"  value="${empregado.naturalidade}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >UF</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" required name="uf" value="${empregado.uf}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >Data de Nascimento</label>
              <input type="date" id="form6Example1" class="form-control" id="validationCustom01" required name="dataNasc"  value="${empregado.dataNasc}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >Sexo</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="sexo" required value="${empregado.sexo}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >Estado Civil</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="estadoCivil" required value="${empregado.estadoCivil}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >RG</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="rg" required value="${empregado.rg}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >Data de Expedição</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="dataExpedicao" required value="${empregado.dataExpedicao}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >Órgão Expedidor</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="orgaoExpedidor" required  value="${empregado.orgaoExpedidor}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >CPF</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="cpf" required value="${empregado.cpf}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >Zona Eleitoral</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="zonaEleitoral" required value="${empregado.zonaEleitoral}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >Sessão</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="secao" required value="${empregado.secao}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >Titulo Eleitoral</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="tituloEleitoral" required value="${empregado.tituloEleitoral}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >E-mail</label>
              <input type="email" id="form6Example1" class="form-control" id="validationCustom01" name="email" required value="${empregado.email}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >Nome do Cônjulgue</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="nomeConjulgue" required value="${empregado.nomeConjugue}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >Nome do Pai</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="nomePai" required value="${empregado.nomePai}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >Nome da Mãe</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="nomeMae" required value="${empregado.nomeMae}" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" >Especial?</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="especial" required value="${empregado.especial}" />
            </div>
          </div>


          <!-- Submit button -->
          <button type="submit" class="btn btn-primary btn-block mb-4">Enviar</button>

        </div>
    </form>

    <jsp:include page="/Templates/footer.jsp"></jsp:include>
