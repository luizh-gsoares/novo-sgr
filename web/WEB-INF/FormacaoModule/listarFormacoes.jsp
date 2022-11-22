<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Lista de Formações</title>
<jsp:include page="/Templates/header.jsp"></jsp:include>
<jsp:include page="/Templates/menu.jsp"></jsp:include>


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Lista de Formações</h1>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <div class="card-header d-flex justify-content-between">
            <a type="button" class="btn btn-secondary" href="cadastrarformacao"
               > Cadastrar Formação <i class="fa-solid fa-floppy-disk"></i>
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
                                            <th>Código do tipo curso</th>
                                            <th>Curso</th>
                                            <th>Instituição</th>
                                            <th>Semestre</th>
                                            <th>Data Inicio</th>
                                            <th>Data Fim</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${listaDeFormacao}" var="formacao">
                                        <tr>
                                            <td>${formacao.idFormacao}</td>
                                            <td>${formacao.id_tipocurso}</td>
                                            <td>${formacao.curso}</td>
                                            <td>${formacao.instituição}</td>
                                            <td>${formacao.semestre}</td>
                                            <td>${formacao.dtInicio}</td>
                                            <td>${formacao.dtFim}</td>
                                    <div class="row" >
                                        <td>
                                            <form action="excluirtelefone" method="post">
                                                <input type="hidden" name="idFormacao" value="${formacao.idFormacao}" />
                                                <input type="submit" class="btn btn-danger" value="Excluir" />
                                            </form>
                                            <form action="alterartelefone" method="get">
                                                <input type="hidden" name="idFormacao" value="${formacao.idFormacao}" />
                                                <input type="submit" class="btn btn-warning" value="Alterar" />
                                            </form>
                                        </td>
                                    </div>
                                    </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Código</th>
                                        <th>Código do tipo curso</th>
                                        <th>Curso</th>
                                        <th>Instituição</th>
                                        <th>Semestre</th>
                                        <th>Data Inicio</th>
                                        <th>Data Fim</th>
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
