<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Lista de Usuários</title>
<jsp:include page="/Templates/header.jsp"></jsp:include>
<jsp:include page="/Templates/menu.jsp"></jsp:include>

    <!-- Content Wrapper. Contains page content -->

    <div class="content-wrapper mt-2">
    <c:forEach items="${listaDeUsuarios}" var="user"> 
        <section class="content">
            <!-- Content Header (Page header) -->

            <c:if test="${user.idPerfil == 1}">    
                <section class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>Usuários </h1>
                            </div>
                        </div>
                        <div class="card-header d-flex justify-content-between ">
                            <div>
                                <form action="cadastrarusuario" method="get">
                                    <button type="submit" class="btn btn-primary my-2" value=""><i class="fa-solid fa-user-plus pe-1"></i> Cadastrar novo usuário</button>
                                </form>
                            </div>
                        </div>  
                    </div><!-- /.container-fluid -->
                </section>
            </c:if>


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
                                            <th>Perfil</th>
                                            <th>Status</th>
                                            <c:if test="${user.idPerfil == 1}"> <th>Ações</th>  </c:if>      
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>${user.idUsuario}</td>
                                            <td>${user.login}</td>
                                            <c:forEach items="${listaDePerfis}" var="perf">
                                                <c:if test="${user.idPerfil == perf.idPerfil}">
                                                    <td>${perf.nome}</td>
                                                </c:if>
                                            </c:forEach>  


                                            <td>
                                                <c:choose>
                                                    <c:when test="${user.status == 1}">
                                                        <button class="btn btn-danger btn-sm"
                                                                onclick="confirmDesativar('${user.idMenu}', '${user.nome}')">
                                                            Desativar&nbsp;
                                                            <i class="fas fa-user fa-user-lock"></i>
                                                        </button>

                                                    </c:when>
                                                    <c:otherwise>
                                                        <button class="btn btn-success btn-sm"
                                                                onclick="confirmAtivar('${user.idMenu}', '${user.nome}')">
                                                            Ativar&nbsp;
                                                            <i class="fa-solid fa-user-shield"></i>
                                                        </button>

                                                    </c:otherwise>
                                                </c:choose>
                                            </td>




                                    <c:if test="${user.idPerfil == 1}"> <div class="row" >
                                            <td class="d-print-none">
                                                <form action="excluirusuario" method="post">
                                                    <input type="hidden" name="idusuario" value="${user.idUsuario}" />
                                                    <input type="submit" class="btn btn-danger" value="Excluir" />
                                                </form>
                                                <form action="alterarusuario" method="get">
                                                    <input type="hidden" name="idusuario" value="${user.idUsuario}" />
                                                    <input type="submit" class="btn btn-warning" value="Alterar" />
                                                </form>
                                                <form action="ativar" method="get">
                                                    <input type="hidden" name="idusuario" value="${user.idUsuario}" />
                                                    <input type="submit" class="btn btn-warning" value="Ativar" />
                                                </form>
                                            </td>
                                        </c:if>    
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
    function (click) {
        if ("valuenull" = 0){
            alert("Escolha um empregado");
            return cadastrarusuario;
        }
    }
    ;
</script>
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

<script type="text/javascript">
    function confirmDesativar(id, nome) {
        if (confirm('Deseja desativar o menu ' +
                nome + '?')) {
            location.href = "gerenciarMenu?acao=desativar&idMenu=" + id;
        }
    }

    function confirmAtivar(id, nome) {
        if (confirm('Deseja ativar o menu ' +
                nome + '?')) {
            location.href = "gerenciarMenu?acao=ativar&idMenu=" + id;
        }
    }
</script>
