<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Lista de Contatos</title>
<jsp:include page="/Templates/header.jsp"></jsp:include>
<jsp:include page="/Templates/menu.jsp"></jsp:include>


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Contatos</h1>
                    </div>
                </div>
                <div class="card-header d-flex justify-content-between py-3">
                    <div>
                        <form action="cadastrartelefone" method="get">
                            <select id="idEmpregado" name="idEmpregado" class="custom-select" required>
                                <option value="" disabled selected>Selecione o empregado</option>
                            <jsp:useBean class="dao.EmpregadoDAO" id="edao"> </jsp:useBean>
                            <c:forEach items="${edao.procuraTodosEmpregados()}" var="empregado">
                                <option value="${empregado.idEmpregado}">${empregado.nome}</option>
                            </c:forEach>
                        </select>
                        <input type="submit" class="btn btn-primary my-3" value="Cadastrar novos contatos" />
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
                                        <th>Funcionário</th>
                                        <th>Telefone Residencial</th>
                                        <th>Telefone Celular</th>
                                        <th>Telefone Recado</th>
                                        <th>Status</th>
                                        <th>Ação</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listaDeTelefones}" var="telefone">
                                        <tr>
                                            <td>${telefone.idTelefone}</td>
                                            <c:forEach items="${listaDeEmpregados}" var="empregado">
                                                <c:if test="${empregado.idEmpregado == telefone.idEmpregado}">
                                                    <td>${empregado.nome}</td>
                                                </c:if>
                                            </c:forEach>
                                            <td>${telefone.telefoneResidencial}</td>
                                            <td>${telefone.telefoneCelular}</td>
                                            <td>${telefone.telefoneRecado}</td>
                                            <c:if test="${telefone.status <= 1}"> <th class="text-success">Ativado</th></c:if>
                                            <c:if test="${telefone.status >= 2}"> <th class="text-danger">Desativado</th></c:if> 
                                    <div class="form-group row" >
                                        
                                        <td>
                                            <div class="dropdown">
                                                <a class="btn btn-success dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Ações
                                                </a> 
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">                                            
                                            <div class="dropdown-item">    
                                            <form action="excluirtelefone" method="post">
                                                <input type="hidden" name="idTelefone" value="${telefone.idTelefone}" />
                                                <button type="submit" class="btn btn-danger" > Excluir <i class="fa-solid fa-trash"></i> </button>
                                            </form>
                                            </div>    
                                            <div class="dropdown-item">    
                                            <form action="alterartelefone" method="get">
                                                <input type="hidden" name="idTelefone" value="${telefone.idTelefone}" />
                                                <button type="submit" class="btn btn-warning" > Alterar <i class="fa-solid fa-pen-to-square"></i> </button>
                                            </form>
                                            </div>
                                            <div class="dropdown-item">    
                                                     <div class="dropdown-item">
                                                        <form action="telefonestatus" method="get">
                                                                    <input type="hidden" name="idTelefone" value="${telefone.idTelefone}" />
                                                                    <c:if test="${telefone.status == 1}"><input type="submit" class="btn btn-danger" value="Desativar" /></c:if>
                                                                    <c:if test="${telefone.status == 2}"><input type="submit" class="btn btn-success" value="Ativar" /></c:if>
                                                        </form>
                                                     </div>                                                
                                            </div>    
                                            </div>    
                                        </td>
                                    </div>
                                    </tr>
                                </c:forEach>
                                
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
