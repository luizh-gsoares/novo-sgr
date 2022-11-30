<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Lista de Endereços</title>
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
                                            <th>#</th>
                                            <th>Nome</th>
                                            <th>Matricula</th>
                                            <th>Nacionalidade</th>
                                            <th>E-mail</th>
                                            <th>Ações</th> 

                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${listaDeEmpregados}" var="empregado">
                                        <tr>
                                            <td>${empregado.idEmpregado}</td>
                                            <td>${empregado.nome}</td>
                                            <td>${empregado.matricula}</td>
                                            <td>${empregado.nacionalidade}</td>                                      
                                            <td>${empregado.email}</td>
                                            <td>
                                                <div class="row d-flex-justify-between"> 
                                                    <div>
                                                        <form action="alterarempregado" method="get">
                                                            <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                            <input type="submit" class="btn btn-warning" value="Alterar dados" />
                                                        </form>
                                                    </div>
                                                    <div>
                                                        <form action="cadastrartelefone" method="get">
                                                            <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                            <input type="submit" class="btn btn-warning" value="Telefone" />
                                                        </form>
                                                    </div>
                                                    <div>
                                                        <form action="cadastrarendereco" method="get">
                                                            <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                            <input type="submit" class="btn btn-warning" value="Endereco" />
                                                        </form>
                                                    </div> 
                                                    <div>
                                                        <form action="cadastrarexperiencia" method="get">
                                                            <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                            <input type="submit" class="btn btn-warning" value="Experiência" />
                                                        </form>
                                                    </div> 
                                                    <div>
                                                        <form action="cadastrarformacao" method="get">
                                                            <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                            <input type="submit" class="btn btn-warning" value="Formação" />
                                                        </form>
                                                    </div> 
                                                    <div>
                                                        <form action="excluirempregado" method="post" class="me-4">
                                                            <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                            <input type="submit" class="btn btn-danger" value="Excluir" />
                                                        </form>
                                                    </div>
                                                </div>
                                            </td>
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
