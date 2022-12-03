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


        <form class="needs-validation" novalidate action="cadastrartelefone" method="post">

            <div class="container">
                <section class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h4>${empregado.nome} - Contatos</h4>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>
            <legend>Telefones</legend>
            <hr>
            <!-- Campos Dados Pessoais -->

            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <input type="hidden" class="form-control" name="idTelefone" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">                          
                        <input type="hidden" class="form-control" name="idEmpregado" value="${empregado.idEmpregado}"/>
                    </div>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Telefone Residencial</label>
                        <input type="text" id="form6Example1" class="form-control phone" id="validationCustom01"
                               name="telefoneResidencial" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Telefone Celular</label>
                        <input type="text" id="form6Example1" class="form-control phone" id="validationCustom01"
                               name="telefoneCelular"  />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1" required>Telefone Recado</label>
                        <input type="text" id="form6Example1" class="form-control phone" id="validationCustom01"
                               name="telefoneRecado"  />
                    </div>
                </div>
            </div>

            <!-- Submit button -->
            <button type="submit" class="btn btn-primary btn-block mb-4">Enviar</button>
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
        $('.phone').mask('00000000000');
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