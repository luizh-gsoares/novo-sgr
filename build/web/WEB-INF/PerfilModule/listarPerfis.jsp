<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Gerenciar Perfil</title>
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

        <div class="card-header d-flex justify-content-between py-3">
    <div>
        <form action="cadastrarendereco" method="get">
            <select id="idEmpregado" name="idEmpregado" class="custom-select">
                <option value="" disabled selected>Selecione o empregado</option>
            <jsp:useBean class="dao.EmpregadoDAO" id="edao"> </jsp:useBean>
            <c:forEach items="${edao.procuraTodosEmpregados()}" var="empregado">
                <option value="${empregado.idEmpregado}">${empregado.nome}</option>
            </c:forEach>
        </select>
        <input type="submit" class="btn btn-primary my-3" value="Cadastrar novo endereço" />
    </form>
</div>
</div>

        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between">
                                <a type="button" class="btn btn-secondary" href="cadastrarperfil"
                                   > Cadastrar Perfil <i class="fa-solid fa-floppy-disk"></i>
                                </a>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Nome</th>
                                            <th>Data de Cadastro</th>
                                            <th>Status</th>
                                            <th>Ações</th>
                                        </tr>
                                    </thead>
                                    <tbody>      
                                    <c:forEach items="${listaDePerfis}" var="perfil">
                                        <tr>
                                            <td>${perfil.idPerfil}</td>
                                            <td>${perfil.nome}</td>
                                            <td>${perfil.dataCadastro}</td>
                                            <td> 
                                                <form action="excluirperfil" method="post">
                                                    <input type="hidden" name="idPerfil"
                                                           value="${perfil.idPerfil}" />
                                                    <input type="submit" class="btn btn-danger"
                                                           value="Excluir Perfil" />
                                                </form>
                                                <form action="alterarperfil" method="get">
                                                    <input type="hidden" name="idPerfil"
                                                           value="${perfil.idPerfil}" />
                                                    <input type="submit" class="btn btn-warning"
                                                           value="Alterar Perfil" />
                                                </form>
                                                     <form action="ativar" method="get">
                                                    <input type="hidden" name="idusuario" value="${perfil.idPerfil}" />
                                                    <input type="submit" class="btn btn-warning" value="Ativar" />
                                                </form>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>#</th>
                                        <th>Nome</th>
                                        <th>Data de Cadastro</th>
                                        <th>Status</th>
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
            "responsive": true, "lengthChange": false, "autoWidth": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    });
</script>