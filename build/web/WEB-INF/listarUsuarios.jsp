<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Lista de Usuários</title>
<jsp:include page="/Templates/header.jsp"></jsp:include>
<jsp:include page="/Templates/menu.jsp"></jsp:include>

    <!-- Content Wrapper. Contains page content -->

    <div class="content-wrapper">
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
                            <input type="submit" class="btn btn-primary my-3" value="Cadastrar novo usuario"/>
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
                                        <th>Ações</th>        
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

                                    <div class="row" >
                                        <td>
                                            <form action="excluirusuario" method="post">
                                                <input type="hidden" name="idusuario" value="${user.idUsuario}" />
                                                <input type="submit" class="btn btn-danger" value="Excluir" />
                                            </form>
                                            <form action="alterarusuario" method="get">
                                                <input type="hidden" name="idusuario" value="${user.idUsuario}" />
                                                <input type="submit" class="btn btn-warning" value="Alterar" />
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
