<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Lista de Contatos</title>
<jsp:include page="/Templates/header.jsp"></jsp:include>
<jsp:include page="/Templates/menu.jsp"></jsp:include>


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Contatos</h1>
                    </div>
                </div>
                <div class="card-header d-flex justify-content-between py-3">
                    <div>
                        <form action="cadastrartelefone" method="get">
                            <select id="idEmpregado" name="idEmpregado" class="custom-select" required>
                                <option value="" disabled selected>Selecione o empregado</option>
                            <jsp:useBean class="dao.EmpregadoDAO" id="edao"> </jsp:useBean>
                            <c:forEach items="${edao.procuraTodosEmpregados()}" var="empregado">
                                <option value="${empregado.idEmpregado}">${empregado.nome}</option>
                            </c:forEach>
                        </select>
                        <input type="submit" class="btn btn-primary my-3" value="Cadastrar novos contatos" />
                    </form>
                </div>
            </div>

        </div><!-- /.container-fluid -->
    </section>

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
                                        <th>#</th>
                                        <th>Escolaridade</th>
                                        <th>Curso</th>
                                        <th>Instituição</th>
                                        <th>Semestre</th>
                                        <th>Data Inicio</th>
                                        <th>Data Fim</th>
                                        <th>Status</th>
                                        <th>Ações</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listaFormacoes}" var="formacao">
                                        <tr>
                                            <td>${formacao.idFormacao}</td>
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

                                    <div class="row" >
                                        <td>
                                            <form action="excluirformacao" method="post">
                                                <input type="hidden" name="idFormacao" value="${formacao.idFormacao}" />
                                                <input type="submit" class="btn btn-danger" value="Excluir" />
                                            </form>
                                            <form action="alterarformacao" method="get">
                                                <input type="hidden" name="idFormacao" value="${formacao.idFormacao}" />
                                                <input type="submit" class="btn btn-warning" value="Alterar" />
                                            </form>
                                            <form action="ativar" method="get">
                                                <input type="hidden" name="idusuario" value="${formacao.idFormacao}" />
                                                <input type="submit" class="btn btn-warning" value="Ativar" />
                                            </form>
                                        </td>
                                    </div>
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
                                        <th>#</th>
                                        <th>Funcionário</th>
                                        <th>Telefone Residencial</th>
                                        <th>Telefone Celular</th>
                                        <th>Telefone Recado</th>
                                        <th>Status</th>
                                        <th>Ação</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listaTelefones}" var="telefone">
                                        <tr>
                                            <td>${telefone.idTelefone}</td>
                                            <c:forEach items="${listaDeEmpregados}" var="empregado">
                                                <c:if test="${empregado.idEmpregado == telefone.idEmpregado}">
                                                    <td>${empregado.nome}</td>
                                                </c:if>
                                            </c:forEach>
                                            <td>${telefone.telefoneResidencial}</td>
                                            <td>${telefone.telefoneCelular}</td>
                                            <td>${telefone.telefoneRecado}</td>
                                    <div class="form-group row" >
                                        <td>
                                            <form action="excluirtelefone" method="post">
                                                <input type="hidden" name="idTelefone" value="${telefone.idTelefone}" />
                                                <button type="submit" class="btn btn-danger" > Excluir <i class="fa-solid fa-trash"></i> </button>
                                            </form>
                                            <form action="alterartelefone" method="get">
                                                <input type="hidden" name="idTelefone" value="${telefone.idTelefone}" />
                                                <button type="submit" class="btn btn-warning" > Alterar <i class="fa-solid fa-pen-to-square"></i> </button>
                                            </form>
                                            <form action="ativar" method="get">
                                                <input type="hidden" name="idusuario" value="${telefone.idTelefone}" />
                                                <input type="submit" class="btn btn-warning" value="Ativar" />
                                            </form>
                                        </td>
                                    </div>
                                    </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>#</th>
                                        <th>Funcionário</th>
                                        <th>Telefone Residencial</th>
                                        <th>Telefone Celular</th>
                                        <th>Telefone Recado</th>
                                        <th>Ação</th>
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
