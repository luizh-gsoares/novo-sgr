<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/Templates/header.jsp"></jsp:include>
<jsp:include page="/Templates/menu.jsp"></jsp:include>


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Gerenciar Perfil</h1>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between">
                            <jsp:include page="cadastrarPerfil.jsp"></jsp:include>
                                <button type="button" class="btn btn-secondary" data-toggle="modal"
                                        data-target="#modal-default">
                                    Cadastrar Perfil <i class="fa-solid fa-floppy-disk"></i>
                                </button>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>Código</th>
                                            <th>Nome</th>
                                            <th>Data de Cadastro</th>
                                            <th>Status</th>
                                            <th>Ação</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="perfil" items="${listaDePerfis}">
                                        <tr>
                                            <td>${perfil.idPerfil}</td>
                                            <td>${perfil.nome}</td>
                                            <td>${perfil.dataCadastro}</td>
                                            <td><fmt:formatDate pattern="dd/MM/yyyy" value="${p.dataCadastro}" /></td>
                                    <form action="excluirproduto" method="post">
                                        <input type="hidden"  name="idProduto" value="${produto.codigo}"/>
                                        <input type="submit" class="btn btn-danger" value="Excluir produto"/>
                                    </form>    
                                    <form action="alterarproduto" method="get">
                                        <input type="hidden" name="idProduto"  value="${produto.codigo}"/>
                                        <input type="submit" class="btn btn-warning" value="Alterar Produto"/>
                                    </form>
                                    </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Código</th>
                                        <th>Nome</th>
                                        <th>Data de Cadastro</th>
                                        <th>Status</th>
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

<jsp:include page="template/footer.jsp"></jsp:include>
<script>
    $(function () {


        $("#example1").DataTable({
            "responsive": true, "lengthChange": false, "autoWidth": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    });
</script>