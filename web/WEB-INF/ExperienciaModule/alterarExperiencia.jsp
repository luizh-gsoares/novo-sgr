<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<jsp:include page="/Templates/header.jsp"></jsp:include>
<jsp:include page="/Templates/menu.jsp"></jsp:include>

    <title>Alterar Experiência</title>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->


        <p value="{$erro}"></p>
        <form action="cadastrarexperiencia" method="post">

            <div class="container">


                <section class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>Alterar Experiência</h1>
                            </div>
                        </div>
                    </div><!-- /.container-fluid -->
                </section>



                <legend>Experiência</legend>
                <hr>
                <!-- Campos Dados Pessoais -->                
                <input type="hidden" class="form-control" name="idEmpregado" value="${experiencia.idEmpregado}"/>

            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Função</label>
                        <input type="text" class="form-control"  name="funcao" placeholder="Função exercida" value="${experiencia.funcao}"/>
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
                        <input type="text"  class="form-control" name="cargaHoraria"  data-mask="00" placeholder="Apenas números"  value="${experiencia.cargaHoraria}"/>
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Local</label>
                        <input type="text" class="form-control" name="local" placeholder="Local de trabalho"  value="${experiencia.local}"/>
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
                        <input type="date" class="form-control" name="dtEntrada"  value="${experiencia.dtEntrada}" />
                    </div>
                </div>

                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Data de Saida"</label>
                        <input type="date" class="form-control" name="dtSaida" value="${experiencia.dtSaida}"/>
                    </div>
                </div>
            </div>


            <!-- Submit button -->
            <button type="submit" class="btn btn-primary btn-block mb-4">Enviar</button>

        </div>
    </form>

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