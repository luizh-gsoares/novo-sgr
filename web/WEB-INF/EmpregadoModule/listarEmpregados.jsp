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
            <div>
                <form action="cadastrarempregado" method="get">

                    <input type="submit" class="btn btn-primary my-2" value="Cadastrar novo empregado" />
                </form>
            </div>
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

                                                <div class="dropdown">
                                                    <a class="btn btn-success dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                       Ações
                                                    </a> 
                                                    
                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                        <div class="dropdown-item">
                                                            <form action="alterarempregado" method="get">
                                                                <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                                <input type="submit" class="btn btn-warning" value="Alterar dados" />
                                                            </form>
                                                        </div>
                                                        <div class="dropdown-item">
                                                            <form action="cadastrartelefone" method="get">
                                                                <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                                <input type="submit" class="btn btn-warning" value="Telefone" />
                                                            </form>
                                                        </div>
                                                        <div class="dropdown-item">
                                                            <form action="cadastrarendereco" method="get">
                                                                <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                                <input type="submit" class="btn btn-warning" value="Endereco" />
                                                            </form>
                                                        </div> 
                                                        <div class="dropdown-item">
                                                            <form action="cadastrarexperiencia" method="get">
                                                                <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                                <input type="submit" class="btn btn-warning" value="Experiência" />
                                                            </form>
                                                        </div> 
                                                        <div class="dropdown-item">
                                                            <form action="cadastrarformacao" method="get">
                                                                <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                                <input type="submit" class="btn btn-warning" value="Formação" />
                                                            </form>
                                                        </div> 
                                                        <div class="dropdown-item">
                                                            <form action="excluirempregado" method="post" class="me-4">
                                                                <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                                <input type="submit" class="btn btn-danger" value="Excluir" />
                                                            </form>
                                                        </div>
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
