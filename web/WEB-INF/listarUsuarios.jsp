<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Lista de Usuários</title>
<jsp:include page="/Templates/header.jsp"></jsp:include>
<jsp:include page="/Templates/menu.jsp"></jsp:include>

    <!-- Content Wrapper. Contains page content -->

    <div class="content-wrapper mt-2">
                       
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
                                            <th>Nome</th>               
                                            <th>Perfil</th>
                                            <th>Status</th>
                                            <th>Ações</th>     
                                        </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                            <c:forEach items="${listaDeUsuarios}" var="user"> 
                                            <td>${user.login}</td>
                                            <c:forEach items="${listaDePerfis}" var="perf">
                                            <c:if test="${user.idPerfil == perf.idPerfil}">
                                            <td>${perf.nome}</td>
                                            </c:if>
                                            </c:forEach>                                            
                                            <c:if test="${user.status <= 1}"> <th class="text-success">Ativado</th></c:if>
                                            <c:if test="${user.status >= 2}"> <th class="text-danger">Desativado</th></c:if>                                                                                
                                            <td>
                                                <div class="dropdown">
                                                <a class="btn btn-success dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Ações </a> 
                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <div class="dropdown-item">    
                                                <form action="excluirusuario" method="post">
                                                    <input type="hidden" name="idusuario" value="${user.idUsuario}" />
                                                    <input type="submit" class="btn btn-danger" value="Excluir" />
                                                </form>
                                                <div class="dropdown-item">  
                                                </div>
                                                <form action="alterarusuario" method="get">
                                                    <input type="hidden" name="idusuario" value="${user.idUsuario}" />
                                                    <input type="submit" class="btn btn-warning" value="Alterar" />
                                                </form>
                                                </div>
                                                <div class="dropdown-item">
                                                     <form action="usuariostatus" method="get">
                                                        <input type="hidden" name="idUsuario" value="${user.idUsuario}" />
                                                        <c:if test="${user.status == 1}"><input type="submit" class="btn btn-danger" value="Desativar" /></c:if>
                                                        <c:if test="${user.status == 2}"><input type="submit" class="btn btn-success" value="Ativar" /></c:if>
                                                     </form>
                                                     </div>
                                                     </div>
                                                </div>
                                                </div>    
                                            </td>                                         
                                        </tr>                                
                                        </tbody>
                                 </c:forEach>
                            </table>
                        </div>
                        </section>
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


