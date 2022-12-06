<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Lista de Contatos</title>
<jsp:include page="/Templates/header.jsp"></jsp:include>
<jsp:include page="/Templates/menu.jsp"></jsp:include>

    <style>
        td{
            colspan: 8 ;
            padding: 2px;
        }
        th{
            colspan: 8 ;
            width: auto;
        }

    </style>


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">

                <section class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <!-- /.card-header -->
                                    <div class="card-body">
                                        <table id="example1" class="table table-striped table-bordered">
                                            <thead>
                                                <!-- Endereços -->
                                                <tr class="Titulo  bg-primary "><th colspan="8">Endereço</th></tr>
                                            </thead>
                                            <tr>
                                                <th>CEP</th>
                                                <th>Logradouro</th>
                                                <th>Complemento</th>
                                                <th>Cidade</th>
                                            </tr>                                        
                                        <c:forEach items="${listaEnderecos}" var="endereco">
                                            <tr>                                               
                                                <td>${endereco.cep}</td>
                                                <td>${endereco.logradouro}</td>
                                                <td>${endereco.complemento}</td>
                                                <c:forEach items="${listaDeCidades}" var="cidade">
                                                    <c:if test="${endereco.idCidade == cidade.idCidade}">
                                                        <td>${cidade.nome}</td>
                                                    </c:if>
                                                </c:forEach>         
                                            </tr>
                                        </c:forEach>
                                        <!-- Experiências -->
                                        <thead>
                                            <tr class="Titulo  bg-primary "><th colspan="8">Experiências</th></tr>
                                        </thead>    
                                        <tr>                                     
                                         
                                            <th>Função</th>
                                            <th>Carga Horária</th>
                                            <th>Vinculo</th>
                                            <th>Local</th>
                                            <th>CRE</th>
                                            <th>Data de Entrada</th>
                                            <th>Data de Saida</th>                           
                                        </tr>
                                        <c:forEach items="${listaDeExperiencias}" var="experiencia">
                                            <tr>
                                                
                                                <td>${experiencia.funcao}</td>
                                                <td>${experiencia.cargaHoraria}</td>   
                                                <c:forEach items="${listaDeTipovinculos}" var="vinculo">
                                                    <c:if test="${experiencia.tipoVinculo == vinculo.idTipovinculo}">
                                                        <td>${vinculo.tipo}</td>
                                                    </c:if>
                                                </c:forEach>
                                                <td>${experiencia.local}</td>
                                                <td>${experiencia.cre}</td>
                                                <td>${experiencia.dtEntrada}</td>
                                                <td>${experiencia.dtSaida}</td>
                                            </tr>
                                        </c:forEach>
                                        <!-- Formação -->
                                        <thead>
                                            <tr class="Titulo  bg-primary "><th colspan="8">Formações</th></tr>
                                        </thead>
                                        <tr>
                                            <th>Escolaridade</th>
                                            <th>Curso</th>
                                            <th>Instituição</th>
                                            <th>Semestre</th>
                                            <th>Data Inicio</th>
                                            <th>Data Fim</th>                                
                                        </tr>
                                        <c:forEach items="${listaDeFormacoes}" var="formacao">
                                            <tr>                                              
                                                <c:forEach items="${listaDeTipocursos}" var="tipocurso">
                                                    <c:if test="${formacao.idTipocurso == tipocurso.idTipocurso}">
                                                        <td>${tipocurso.nome}</td>
                                                    </c:if>
                                                </c:forEach>
                                                <td>${formacao.curso}</td>
                                                <td>${formacao.instituicao}</td>
                                                <td>${formacao.semestre}</td>
                                                <td>${formacao.dtInicio}</td>
                                                <td>${formacao.dtFim}</td>
                                            </tr>
                                        </c:forEach>
                                        <!--Telefones-->  
                                        <thead>
                                            <tr class="Titulo  bg-primary "><th colspan="8">Contatos</th></tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th>Telefone Residencial</th>
                                                <th>Telefone Celular</th>
                                                <th>Telefone Recado</th>
                                            </tr>
                                            <c:forEach items="${listaTelefones}" var="telefone">
                                                <tr>
                                                    <td>${telefone.telefoneResidencial}</td>
                                                    <td>${telefone.telefoneCelular}</td>
                                                    <td>${telefone.telefoneRecado}</td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>    
                                    </table>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </section>
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content-wrapper -->
</div>

<jsp:include page="/Templates/footer.jsp"></jsp:include>
<script>
    $(function () {


        $("#example1").DataTable({
            "responsive": true,
            "lengthChange": false,
            "autoWidth": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    });

</script>