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
                        <h1>Formações</h1>
                    </div>
                </div>
                <div class="card-header d-flex justify-content-between py-3">
                    <div>
                        <form action="cadastrarformacao" method="get">
                            <select id="idEmpregado" name="idEmpregado" class="custom-select" required>
                                <option value="" disabled selected>Selecione o empregado</option>
                            <jsp:useBean class="dao.EmpregadoDAO" id="edao"> </jsp:useBean>
                            <c:forEach items="${edao.procuraTodosEmpregados()}" var="empregado">
                                <option value="${empregado.idEmpregado}">${empregado.nome}</option>
                            </c:forEach>
                        </select>
                        <input type="submit" class="btn btn-primary my-3" value="Cadastrar nova formação" />
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
                                    <c:forEach items="${listaDeFormacoes}" var="formacao">
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
                                            <c:if test="${formacao.status <= 1}"> <th class="text-success">Ativado</th></c:if>
                                            <c:if test="${formacao.status >= 2}"> <th class="text-danger">Desativado</th></c:if>
                                            <td>
                                    <div class="dropdown">
                                        <a class="btn btn-success dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Ações </a> 
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            
                                                <div class="dropdown-item">
                                                <form action="excluirformacao" method="post">
                                                    <input type="hidden" name="idFormacao" value="${formacao.idFormacao}" />
                                                    <input type="submit" class="btn btn-light" value="Excluir" />
                                                </form>
                                                    </div>
                                                    <div class="dropdown-item">
                                                <form action="alterarformacao" method="get">
                                                    <input type="hidden" name="idFormacao" value="${formacao.idFormacao}" />
                                                    <input type="submit" class="btn btn-light" value="Alterar" />
                                                </form>
                                                    </div>
                                                           <div class="dropdown-item">
                                                           <form action="formacaostatus" method="get">
                                                          <input type="hidden" name="idFormacao" value="${formacao.idFormacao}" />
                                                          <c:if test="${formacao.status == 1}"><input type="submit" class="btn btn-danger" value="Desativar" /></c:if>
                                                           <c:if test="${formacao.status == 2}"><input type="submit" class="btn btn-success" value="Ativar" /></c:if>
                                                         </form>
                                                     </div>
                                            </td>
                                        </div>
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
