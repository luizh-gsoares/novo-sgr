<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Lista de Empregados</title>
<jsp:include page="/Templates/header.jsp"></jsp:include>
<jsp:include page="/Templates/menu.jsp"></jsp:include>


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Lista de Empregados</h1>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>
      
        <div class="card-header d-flex justify-content-between">
            <a type="button" class="btn btn-secondary" href="cadastrarempregado"
               > Cadastrar Empregado <i class="fa-solid fa-floppy-disk"></i>
            </a>
        </div>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">

                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>Código</th>
                                            <th>Nome</th>
                                            <th>Matricula</th>
                                            <th>Nome Social</th>
                                            <th>Nacionalidade</th>
                                            <th>Naturalidade</th>
                                            <th>UF</th>
                                            <th>Data de Nascimento</th>
                                            <th>Sexo</th>
                                            <th>Estado Civil</th>
                                            <th>RG</th>
                                            <th>Data Expedição</th>
                                            <th>Órgão Expedidor</th>
                                            <th>CPF</th>
                                            <th>Zona Eleitoral</th>
                                            <th>Sessão</th>
                                            <th>Titulo Eleitoral</th>
                                            <th>E-mail</th>
                                            <th>Nome do Conjulgue</th>
                                            <th>Nome do Pai</th>
                                            <th>Nome da Mãe</th>
                                            <th>Especial</th>
                                            <th>Ações</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${listaDeEmpregados}" var="empregado">
                                        <tr>
                                            <td>${empregado.idEmpregado}</td>
                                            <td>${empregado.nome}</td>
                                            <td>${empregado.nomeSocial}</td>
                                            <td>${empregado.nacionalidade}</td>
                                            <td>${empregado.naturalidade}</td>
                                            <td>${empregado.uf}</td>
                                            <td>${empregado.dataNasc}</td>
                                            <td>${empregado.sexo}</td>
                                            <td>${empregado.estadoCivil}</td>
                                            <td>${empregado.rg}</td>
                                            <td>${empregado.dataExpedicao}</td>
                                            <td>${empregado.orgaoExpedidor}</td>
                                            <td>${empregado.cpf}</td>
                                            <td>${empregado.zonaEleitoral}</td>
                                            <td>${empregado.secao}</td>
                                            <td>${empregado.tituloEleitoral}</td>
                                            <td>${empregado.email}</td>
                                            <td>${empregado.nomeConjugue}</td>
                                            <td>${empregado.nomePai}</td>
                                            <td>${empregado.nomeMae}</td>
                                            <td>${empregado.especial}</td>
                                            <td>    
                                                <div class="row" >
                                                    <td>
                                                        <form action="excluirempregado" method="post">
                                                            <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                            <input type="submit" class="btn btn-danger" value="Excluir" />
                                                        </form>
                                                        <form action="alterarempregado" method="get">
                                                            <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                            <input type="submit" class="btn btn-warning" value="Alterar" />
                                                        </form>
                                                    </td>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Código</th>
                                        <th>Nome</th>
                                        <th>Matricula</th>
                                        <th>Nome Social</th>
                                        <th>Nacionalidade</th>
                                        <th>Naturalidade</th>
                                        <th>UF</th>
                                        <th>Data de Nascimento</th>
                                        <th>Sexo</th>
                                        <th>Estado Civil</th>
                                        <th>RG</th>
                                        <th>Data Expedição</th>
                                        <th>Órgão Expedidor</th>
                                        <th>CPF</th>
                                        <th>Zona Eleitoral</th>
                                        <th>Sessão</th>
                                        <th>Titulo Eleitoral</th>
                                        <th>E-mail</th>
                                        <th>Nome do Conjulgue</th>
                                        <th>Nome do Pai</th>
                                        <th>Nome da Mãe</th>
                                        <th>Especial</th>
                                        <th>Ações</th>
                                    </tr>
                                </tfoot>
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
    <!-- /.content -->
</div>
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
