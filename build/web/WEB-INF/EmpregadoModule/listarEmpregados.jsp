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
                        <h1>Empregados</h1>
                    </div> 
                </div>
                <div class="card-header d-flex justify-content-between">
                    <div>
                        <form action="cadastrarempregado" method="get">

                            <button type="submit" class="btn btn-primary my-2" value=""><i class="fa-solid fa-user-plus pe-1"></i> Cadastrar novo empregado</button>
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
                                            <th>Nome</th>
                                            <th>Matricula</th>
                                            <th>Nacionalidade</th>
                                            <th>E-mail</th>
                                            <th>Status</th> 
                                            <th>Ação</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${listaDeEmpregados}" var="empregado">
                                        <tr>
                                            <td class="d-print-none">${empregado.idEmpregado}</td>
                                            <td>${empregado.nome}</td>
                                            <td>${empregado.matricula}</td>
                                            <td>${empregado.nacionalidade}</td>                                      
                                            <td>${empregado.email}</td>
                                            <c:if test="${empregado.status <= 1}"> <th class="text-success">Ativado</th></c:if>
                                            <c:if test="${empregado.status >= 2}"> <th class="text-danger">Desativado</th></c:if>
                                                <td>

                                                    <div class="dropdown">
                                                        <a class="btn btn-success dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            Ações
                                                        </a> 

                                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                            <div class="dropdown-item">
                                                                <form action="alterarempregado" method="get">
                                                                    <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                                <input type="submit" class="btn btn-info" value="Alterar dados" />
                                                            </form>
                                                        </div>
                                                        <div class="dropdown-item">
                                                            <form action="cadastrartelefone" method="get">
                                                                <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                                <input type="submit" class="btn btn-info" value="Telefone" />
                                                            </form>
                                                        </div>
                                                        <div class="dropdown-item">
                                                            <form action="cadastrarendereco" method="get">
                                                                <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                                <input type="submit" class="btn btn-info" value="Endereco" />
                                                            </form>
                                                        </div> 
                                                        <div class="dropdown-item">
                                                            <form action="cadastrarexperiencia" method="get">
                                                                <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                                <input type="submit" class="btn btn-info" value="Experiência" />
                                                            </form>
                                                        </div> 
                                                        <div class="dropdown-item">
                                                            <form action="cadastrarformacao" method="get">
                                                                <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                                <input type="submit" class="btn btn-info" value="Formação" />
                                                            </form>
                                                        </div> 
                                                        <div class="dropdown-item">
                                                            <form action="fichafuncional" method="get">
                                                                <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                                <input type="submit" class="btn btn-info" value="Ficha Funcional" />
                                                            </form>
                                                        </div>
                
                                                            <div class="dropdown-item">
                                                                <form action="empregadostatus" method="get">
                                                                    <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                                    <c:if test="${empregado.status == 1}"><input type="submit" class="btn btn-success" value="Ativar" /></c:if>
                                                                    <c:if test="${empregado.status == 2}"><input type="submit" class="btn btn-success" value="Ativar" /></c:if>
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
    <script>
        function del(codigo) {
            if (confirm('Excluir a categoria?')) {
                location.href = '../excluirempregado' + ${empregado.idEmpregado};
            }
        }
        </scritp>