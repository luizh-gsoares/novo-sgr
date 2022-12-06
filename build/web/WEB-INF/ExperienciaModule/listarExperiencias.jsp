<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Lista de Experiencia</title>
<jsp:include page="/Templates/header.jsp"></jsp:include>
<jsp:include page="/Templates/menu.jsp"></jsp:include>


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Experiências</h1>
                    </div>
                </div>
                <div class="card-header d-flex justify-content-between py-3">
                    <div>
                        <form action="cadastrarexperiencia" method="get">
                            <select id="idEmpregado" name="idEmpregado" class="custom-select" required>
                                <option value="" disabled selected>Selecione o empregado</option>
                            <jsp:useBean class="dao.EmpregadoDAO" id="edao"> </jsp:useBean>
                            <c:forEach items="${edao.procuraTodosEmpregados()}" var="empregado">
                                <option value="${empregado.idEmpregado}">${empregado.nome}</option>
                            </c:forEach>
                        </select>
                        <input type="submit" class="btn btn-primary my-3" value="Cadastrar nova experiência" />
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
                                        <th>Cod</th>
                                        <th>Empregado</th>
                                        <th>Função</th>
                                        <th>Carga Horária</th>
                                        <th>Vinculo</th>
                                        <th>Local</th>
                                        <th>CRE</th>
                                        <th>Data de Entrada</th>
                                        <th>Data de Saida</th>
                                       
                                        <th>Ações</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listaDeExperiencias}" var="experiencia">
                                        <tr>
                                            <td>${experiencia.idExperiencia}</td>
                                            <c:forEach items="${listaDeEmpregados}" var="empregado">
                                                <c:if test="${experiencia.idEmpregado == empregado.idEmpregado}">
                                                    <td>${empregado.nome}</td>
                                                </c:if>
                                            </c:forEach>
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
                                            <td>
                                                <div class="dropdown">
                                                    <a class="btn btn-success dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        Ações </a> 
                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                        <div class="dropdown-item">    
                                                            <form action="excluirexperiencia" method="post">
                                                                <input type="hidden" name="idExperiencia" value="${experiencia.idExperiencia}" />
                                                                <button type="submit" class="btn btn-danger" > Excluir <i class="fa-solid fa-trash"></i> </button>
                                                            </form>
                                                        </div>        
                                                        <form action="alterarexperiencia" method="get">
                                                            <div class="dropdown-item">
                                                                <input type="hidden" name="idExperiencia" value="${experiencia.idExperiencia}" />
                                                                <button type="submit" class="btn btn-warning" > Alterar <i class="fa-solid fa-pen-to-square"></i> </button>
                                                        </form>
                                                    </div>
                                                    <div class="dropdown-item">
                                                        <form action="ativar" method="get">
                                                            <input type="hidden" name="idusuario" value="${experiencia.idExperiencia}" />
                                                            <input type="submit" class="btn btn-warning" value="Ativar" />
                                                        </form>
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
