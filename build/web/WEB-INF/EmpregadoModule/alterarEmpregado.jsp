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

                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <form class="needs-validation"  action="alterarempregado" method="post">

            <div class="container">
                <legend>
                    <h3>Alterar Empregados</h3>
                    <input type="hidden" class="form-control" name="idEmpregado" value="${empregado.idEmpregado}"/>
                </legend>
                <hr>
            

            <fieldset>
                <legend>Informações Pessoais</legend>
                <div class="row d-flex justify-content-between">
                    <div class="col-md-4 mb-3">
                        <label for="validationDefault01">Nome Completo</label>
                        <input  type="text" class="form-control" id="validationDefault01" placeholder="Nome Completo" name="nome"
                                 value="${empregado.nome}">
                    </div>
                    <div class="col-md-4 mb-3">
                        <label class="form-label" for="form6Example1" >Matricula</label>
                        <input  type="number" id="form6Example1" class="form-control" id="validationCustom01" name="matricula"
                               placeholder="Matricula" value="${empregado.matricula}" />
                    </div>
                    <div class="col-md-4 mb-3">
                        <label class="form-label" for="form6Example1" >Nome Social</label>
                        <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="nomeSocial"
                               placeholder="Nome Social" value="${empregado.nomeSocial}" />
                    </div>
                </div>
                <div class="row d-flex justify-content-between">
                    <div class="col-md-4 mb-3">
                        <label class="form-label" for="form6Example1" >Nacionalidade</label> <br>
                        <select id="idPais" name="nacionalidade" class="custom-select">
                        <jsp:useBean class="dao.EmpregadoDAO" id="empdao"> </jsp:useBean>
                        <c:forEach items="${empdao.procuraTodosPaises()}" var="pais">
                            <option value="${pais.id}">${pais.nome_pt}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-md-4 mb-3">
                    <label class="form-label" for="form6Example1" >Naturalidade</label> <br>
                    <select id="idNaturalidade" name="naturalidade" class="custom-select">
                        <jsp:useBean class="dao.EmpregadoDAO" id="ndao"> </jsp:useBean>
                        <c:forEach items="${ndao.procuraTodasCidades()}" var="nat">
                            <option value="${nat.idCidade}">${nat.nome}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-md-4 mb-3">
                    <label class="form-label" for="form6Example1" >Etnia</label> <br>
                    <select id="idEtnia" name="etnia" class="custom-select">
                        <jsp:useBean class="dao.EmpregadoDAO" id="edao"> </jsp:useBean>
                        <c:forEach items="${edao.procuraTodasEtnias()}" var="et">
                            <option value="${et.idEtnia}">${et.nome}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="row d-flex justify-content-between">
                <div class="col-md-4 mb-3">
                    <label class="form-label" for="form6Example1" >Data de Nascimento</label>
                    <input  type="date" id="form6Example1" class="form-control" id="validationCustom01" name="dataNasc"
                           placeholder="Data de Nascimento" value="${empregado.dataNasc}" />
                </div>
                <div class="col-md-4 mb-3">
                    <label class="form-label" for="form6Example1" >Sexo</label>
                    <select id="idSexo" name="sexo" class="custom-select">
                        <jsp:useBean class="dao.EmpregadoDAO" id="sxdao"> </jsp:useBean>
                        <c:forEach items="${sxdao.procuraTodosSexos()}" var="s">
                            <option value="${s.idSexo}">${s.sexo}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-md-4 mb-3">
                    <label class="form-label" for="form6Example1" >Estado Civil</label>
                    <select id="idEstadocivil" name="estadoCivil" class="custom-select">
                        <jsp:useBean class="dao.EmpregadoDAO" id="estadao"> </jsp:useBean>
                        <c:forEach items="${estadao.procuraTodosEstadocivis()}" var="est">
                            <option value="${est.idEstadocivil}">${est.tipo}</option>
                        </c:forEach>
                    </select>
                </div>
                        </div>           
        </fieldset>
        <fieldset>
            <legend>Informações Legais</legend>
            <hr>
            <div class="row d-flex justify-content-between">
                <div class="col-md-4 mb-3">
                    <label class="form-label" for="form6Example1" >RG</label>
                    <input  type="text" id="form6Example1" class="form-control" id="validationCustom01" name="rg"
                           placeholder="RG" value="${empregado.rg}" data-mask="0.000.000"/>
                </div>
                <div class="col-md-4 mb-3">
                    <label class="form-label" for="form6Example1" >UF</label>
                    <select id="idEstado" name="uf" class="custom-select">
                        <jsp:useBean class="dao.EmpregadoDAO" id="ufdao"> </jsp:useBean>
                        <c:forEach items="${ufdao.procuraTodosEstados()}" var="uf">
                            <option value="${uf.idEstado}">${uf.uf}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-md-4 mb-3">
                    <label class="form-label" for="form6Example1" >Data de Expedição</label>
                    <input  type="DATE" id="form6Example1" class="form-control" id="validationCustom01" name="dataExpedicao"
                           placeholder="Data de Expedição"  value="${empregado.dataExpedicao}"/>
                </div>

            </div>
            <div class="row d-flex justify-content-between">
                <div class="col-md-4 mb-3">
                    <label class="form-label" for="form6Example1" >CPF</label>
                    <input  type="text" id="form6Example1" class="form-control" id="validationCustom01" name="cpf"
                           placeholder="CPF" value="${empregado.cpf}"  data-mask="000.000.000-00" />
                </div>
                <div class="col-md-4 mb-3">
                    <label class="form-label" for="form6Example1" >Zona Eleitoral</label>
                    <input  type="text" id="form6Example1" class="form-control" id="validationCustom01" name="zonaEleitoral"
                           placeholder="Zona Eleitoral" value="${empregado.zonaEleitoral}"  data-mask="000" />
                </div>
                <div class="col-md-4 mb-3">
                    <label class="form-label" for="form6Example1" >Sessão</label>
                    <input  type="text" id="form6Example1" class="form-control" id="validationCustom01" name="secao"
                           placeholder="Sessão" value="${empregado.secao}"  data-mask="000"/>
                </div>
            </div>
            <div class="row d-flex justify-content-between">
                <div class="col-md-4 mb-3">
                    <label class="form-label" for="form6Example1" >Titulo Eleitoral</label>
                    <input  type="text" id="form6Example1" class="form-control" id="validationCustom01" name="tituloEleitoral"
                           placeholder="Titulo Eleitoral" value="${empregado.tituloEleitoral}"  data-mask="0000.0000.0000" />
                </div>
                <div class="col-md-4 mb-3">
                    <label class="form-label" for="form6Example1" >Órgão Expedidor</label>
                    <input  type="text" id="form6Example1" class="form-control" id="validationCustom01" name="orgaoExpedidor"
                           placeholder="Órgão Expedidor" value="${empregado.orgaoExpedidor}" />
                </div>
                <div class="col-md-4 mb-3">
                    <label for="validationDefaultUsername">E-mail</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroupPrepend2">@</span>
                        </div>
                        <input  type="text" class="form-control" id="validationDefaultUsername" placeholder="E-mail" name="email"
                               aria-describedby="inputGroupPrepend2"  value="${empregado.email}">
                    </div>
                </div>
            </div>
        </fieldset>
        <fieldset>
            <legend>Familiares</legend>
            <hr>
            <div class="row d-flex justify-content-between">
                <div class="col-md-4 mb-3">
                    <label class="form-label" for="form6Example1" >Nome do Cônjugue</label>
                    <input  type="text" placeholder="Nome do Cônjulgue" id="form6Example1" class="form-control"
                           id="validationCustom01" name="nomeConjugue"  value="${empregado.nomeConjugue}"/>
                </div>
                <div class="col-md-4 mb-3">
                    <label class="form-label" for="form6Example1" >Nome do Pai</label>
                    <input  type="text" id="form6Example1" class="form-control" id="validationCustom01" name="nomePai"
                           placeholder="Nome do Pai" value="${empregado.nomePai}" />
                </div>
                <div class="col-md-4 mb-3">
                    <label class="form-label" for="form6Example1" >Nome da Mãe</label>
                    <input  type="text" id="form6Example1" class="form-control" id="validationCustom01" name="nomeMae"
                           placeholder="Nome da Mãe" value="${empregado.nomeMae}" />
                </div>
        </fieldset>
        <fieldset>
            <legend>Outros</legend>
            <hr>
            <div class="col-md-4 mb-3">
                <label class="form-label" for="form6Example1" >Possui necessidades especiais?</label> <br>
                <select id="idEspecialidade" name="especial" class="custom-select">
                    <jsp:useBean class="dao.EmpregadoDAO" id="esdao"> </jsp:useBean>
                    <c:forEach items="${esdao.procuraTodosEspeciais()}" var="esp">
                        <option value="${esp.idEspecialidade}">${esp.nome}</option>
                    </c:forEach>
                </select>
            </div>
        </fieldset>      
</div>
                    

<br> <br>
<!-- Submit button -->
<input  type="submit" class="btn btn-primary btn-block mb-4 w-30"></input>
</div>
</div>
</form>
</div>
<jsp:include page="/Templates/footer.jsp"></jsp:include>

<script>
    $(document).ready(function () {
        $('.date').mask('00/00/0000');
        $('.rg').mask('00/00/0000');
        $('.time').mask('00:00:00');
        $('.date_time').mask('00/00/0000 00:00:00');
        $('.cep').mask('00000-000');
        $('.phone').mask('0000-0000');
        $('.phone_with_ddd').mask('(00) 0000-0000');
        $('.phone_us').mask('(000) 000-0000');
        $('.mixed').mask('AAA 000-S0S');
        $('.cpf').mask('000.000.000-00', {reverse: true});
        $('.cnpj').mask('00.000.000/0000-00', {reverse: true});
        $('.money').mask('000.000.000.000.000,00', {reverse: true});
        $('.money2').mask("#.##0,00", {reverse: true});
        $('.ip_address').mask('0ZZ.0ZZ.0ZZ.0ZZ', {
            translation: {
                'Z': {
                    pattern: /[0-9]/, optional: true
                }
            }
        });
        $('.ip_address').mask('099.099.099.099');
        $('.percent').mask('##0,00%', {reverse: true});
        $('.clear-if-not-match').mask("00/00/0000", {clearIfNotMatch: true});
        $('.placeholder').mask("00/00/0000", {placeholder: "__/__/____"});
        $('.fallback').mask("00r00r0000", {
            translation: {
                'r': {
                    pattern: /[\/]/,
                    fallback: '/'
                },
                placeholder: "__/__/____"
            }
        });
        $('.selectonfocus').mask("00/00/0000", {selectOnFocus: true});
    });
</script>    