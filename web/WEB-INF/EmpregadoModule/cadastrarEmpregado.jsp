<%@page import="java.util.List"%>
<%@page import="model.Telefone"%>
<%@page import="dao.TelefoneDAO"%>
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

          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <form class="needs-validation" novalidate action="cadastrarempregado" method="post">

      <div class="container">
        <legend>
          <h3>Cadastrar Empregados</h3>
        </legend>
        <hr>

        <div class="col-md-4 mb-3">
          <input type="hidden" id="form6Example1" class="form-control" id="validationCustom01" name="idEmpregado" />
        </div>

        <div class="row d-flex justify-content-between">
          <div class="col-md-4 mb-3">
            <label for="validationDefault01">Nome Completo</label>
            <input type="text" class="form-control" id="validationDefault01" placeholder="Nome Completo" name="nome"
              required>
          </div>
          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>Matricula</label>
            <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="matricula"
              placeholder="Matricula" />
          </div>
          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>Nome Social</label>
            <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="nomeSocial"
              placeholder="Nome Social" />
          </div>
        </div>

        <div class="row d-flex justify-content-between">
          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>Nacionalidade</label> <br>
            <select id="idPais" name="idPais" class="custom-select">
              <jsp:useBean class="dao.EmpregadoDAO" id="empdao"> </jsp:useBean>
              <c:forEach items="${empdao.procuraTodosPaises()}" var="pais">
                <option value="${pais.id}">${pais.nome_pt}</option>
              </c:forEach>
            </select>
          </div>
          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>Naturalidade</label> <br>
            <select id="idNaturalidade" name="idNaturalidade" class="custom-select">
              <jsp:useBean class="dao.EmpregadoDAO" id="ndao"> </jsp:useBean>
              <c:forEach items="${ndao.procuraTodasCidades()}" var="nat">
                <option value="${nat.idCidade}">${nat.nome}</option>
              </c:forEach>
            </select>
          </div>
          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>Etnia</label> <br>
            <select id="idEtinia" name="idEtinia" class="custom-select">
              <jsp:useBean class="dao.EmpregadoDAO" id="edao"> </jsp:useBean>
              <c:forEach items="${edao.procuraTodasEtnias()}" var="et">
                <option value="${et.idEtnia}">${et.nome}</option>
              </c:forEach>
            </select>
          </div>
        </div>

        <div class="row d-flex justify-content-between">
          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>Data de Nascimento</label>
            <input type="date" id="form6Example1" class="form-control" id="validationCustom01" name="dataNasc"
              placeholder="Data de Nascimento" />
          </div>
          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>Sexo</label>
            <select id="idSexo" name="idSexo" class="custom-select">
              <jsp:useBean class="dao.EmpregadoDAO" id="sxdao"> </jsp:useBean>
              <c:forEach items="${sxdao.procuraTodosSexos()}" var="s">
                <option value="${s.idSexo}">${s.sexo}</option>
              </c:forEach>
            </select>
          </div>
          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>Estado Civil</label>
            <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="estadoCivil"
              placeholder="Estado Civil" />
          </div>
        </div>

        <div class="row d-flex justify-content-between">
          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>RG</label>
            <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="rg"
              placeholder="RG" />
          </div>
          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>Data de Expedição</label>
            <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="dataExpedicao"
              placeholder="Data de Expedição" />
          </div>
          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>Órgão Expedidor</label>
            <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="orgaoExpedidor"
              placeholder="Órgão Expedidor" />
          </div>
        </div>

        <div class="row d-flex justify-content-between">
          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>CPF</label>
            <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="cpf"
              placeholder="CPF" />
          </div>
          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>Zona Eleitoral</label>
            <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="zonaEleitoral"
              placeholder="Zona Eleitoral" />
          </div>
          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>Sessão</label>
            <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="secao"
              placeholder="Sessão" />
          </div>
        </div>

        <div class="row d-flex justify-content-between">
          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>Titulo Eleitoral</label>
            <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="tituloEleitoral"
              placeholder="Titulo Eleitoral" />
          </div>

          <div class="col-md-4 mb-3">
            <label for="validationDefaultUsername">E-mail</label>
            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroupPrepend2">@</span>
              </div>
              <input type="text" class="form-control" id="validationDefaultUsername" placeholder="E-mail"
                aria-describedby="inputGroupPrepend2" required>
            </div>
          </div>

          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>Nome do Cônjulgue</label>
            <input type="text" placeholder="Nome do Cônjulgue" id="form6Example1" class="form-control"
              id="validationCustom01" name="nomeConjulgue" />
          </div>
        </div>
        <div class="row d-flex justify-content-between">
          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>Nome do Pai</label>
            <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="nomePai"
              placeholder="Nome do Pai" c />
          </div>
          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>Nome da Mãe</label>
            <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="nomeMae"
              placeholder="Nome da Mãe" />
          </div>

          <div class="col-md-4 mb-3">
            <label class="form-label" for="form6Example1" required>Possui necessidades especiais?</label> <br>
            <select id="idEspecialidade" name="idEspecialidade" class="custom-select">
              <jsp:useBean class="dao.EmpregadoDAO" id="esdao"> </jsp:useBean>
              <c:forEach items="${esdao.procuraTodosEspeciais()}" var="esp">
                <option value="${esp.idEspecialidade}">${esp.nome}</option>
              </c:forEach>
            </select>
          </div>
        </div>

        <br> <br>
        <!-- Submit button -->
        <button type="submit" class="btn btn-primary btn-block mb-4 w-30">Enviar</button>
      </div>
  </div>
  </form>

  <jsp:include page="/Templates/footer.jsp"></jsp:include>
