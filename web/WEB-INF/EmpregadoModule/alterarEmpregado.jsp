<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%%>
  <!DOCTYPE html>
  <jsp:include page="/Templates/header.jsp"></jsp:include>
  <jsp:include page="/Templates/menu.jsp"></jsp:include>

  <title>Cadastrar Empregado</title>

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

    <form class="needs-validation" novalidate action="cadastrarempregado" method="post">

      <div class="container">

        <legend>Empregados</legend>
        <hr>
        <!-- Campos Dados Pessoais -->

        <div class="row mb-4">
          <div class="col">
            <div class="form-outline">
              <input type="hidden" id="form6Example1" class="form-control" id="validationCustom01" name="idEmpregado" />
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Nome</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="nome" />
              ${empregado.nome}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Matricula</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="matricula" />${empregado.matricula}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Nome Social</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="nomeSocial" />${empregado.nomeSocial}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Nacionalidade</label>${empregado.nacionalidade}
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="nacionalidade" />
              SELECT
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Naturalidade</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="naturalidade" />${empregado.naturalidade}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>UF</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="uf" />${empregado.uf}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Data de Nascimento</label>
              <input type="date" id="form6Example1" class="form-control" id="validationCustom01" name="dataNasc" />${empregado.dataNasc}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Sexo</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="sexo" /> SELECT${empregado.sexo}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Estado Civil</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="estadoCivil" />${empregado.estadoCivil}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>RG</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="rg" />${empregado.rg}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Data de Expedição</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="dataExpedicao" />${empregado.dataExpedicao}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Órgão Expedidor</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01"
                name="orgaoExpedidor" />${empregado.orgaoExpedidor}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>CPF</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="cpf" />${empregado.cpf}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Zona Eleitoral</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="zonaEleitoral" />${empregado.zonaEleitoral}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Sessão</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="secao" />${empregado.secao}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Titulo Eleitoral</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01"
                name="tituloEleitoral" />${empregado.tituloEleitoral}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>E-mail</label>
              <input type="email" id="form6Example1" class="form-control" id="validationCustom01" name="email" />${empregado.email}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Nome do Cônjulgue</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="nomeConjulgue" />${empregado.nomeConjulgue}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Nome do Pai</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="nomePai" />${empregado.nomePai}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Nome da Mãe</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="nomeMae" />${empregado.nomeMae}
            </div>
            <div class="form-outline">
              <label class="form-label" for="form6Example1" required>Especial?</label>
              <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="especial" />${empregado.especial}
            </div>
          </div>


          <!-- Submit button -->
          <button type="submit" class="btn btn-primary btn-block mb-4">Enviar</button>

        </div>
    </form>

    <jsp:include page="/Templates/footer.jsp"></jsp:include>
