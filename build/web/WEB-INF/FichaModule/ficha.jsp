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
                                            <c:forEach items="${listarEmpregados}" var="empregado">
                                                <tr>
                                                    <td class="d-print-none">${empregado.idEmpregado}</td>
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
                                                                    <form action="fichafuncional" method="get">
                                                                        <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                                        <input type="submit" class="btn btn-warning" value="Ficha Funcional" />
                                                                    </form>
                                                                </div>
                                                                <div class="dropdown-item">
                                                                    <form action="excluirempregado" method="post" class="me-4">
                                                                        <input type="hidden" name="idEmpregado" value="${empregado.idEmpregado}" />
                                                                        <input type="submit" class="btn btn-danger" value="Excluir" />
                                                                    </form>
                                                                </div>
                                                                <div class="dropdown-item">
                                                                    <form action="ativar" method="get">
                                                                        <input type="hidden" name="idusuario" value="${empregado.idEmpregado}" />
                                                                        <input type="submit" class="btn btn-warning" value="Ativar" />
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
                                                <th>CEP</th>
                                                <th>Logradouro</th>
                                                <th>Complemento</th>
                                                <th>Cidade</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${listaEnderecos}" var="endereco">
                                                <tr>
                                                    <td>${endereco.idEndereco}</td>
                                                    <td>${endereco.cep}</td>
                                                    <td>${endereco.logradouro}</td>
                                                    <td>${endereco.complemento}</td>

                                                    <c:forEach items="${listaDeCidades}" var="cidade">
                                                        <c:if test="${endereco.idCidade == cidade.idCidade}">
                                                            <td>${cidade.nome}</td>
                                                        </c:if>
                                                    </c:forEach>         

                                            <div class="row" >
                                                <td>
                                                    <form action="excluirendereco" method="post">
                                                        <input type="hidden" name="idEndereco" value="${endereco.idEndereco}" />
                                                        <input type="submit" class="btn btn-danger" value="Excluir" />
                                                    </form>
                                                    <form action="alterarendereco" method="get">
                                                        <input type="hidden" name="idEndereco" value="${endereco.idEndereco}" />
                                                        <input type="submit" class="btn btn-warning" value="Alterar" />
                                                    </form>
                                                    <form action="ativar" method="get">
                                                        <input type="hidden" name="idusuario" value="${endereco.idEndereco}" />
                                                        <input type="submit" class="btn btn-warning" value="Ativar" />
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
                                        <th>Status</th>
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
                                                <form action="excluirexperiencia" method="post">
                                                    <input type="hidden" name="idExperiencia" value="${experiencia.idExperiencia}" />
                                                    <button type="submit" class="btn btn-danger" > Excluir <i class="fa-solid fa-trash"></i> </button>
                                                </form>
                                                <form action="alterarexperiencia" method="get">
                                                    <input type="hidden" name="idExperiencia" value="${experiencia.idExperiencia}" />
                                                    <button type="submit" class="btn btn-warning" > Alterar <i class="fa-solid fa-pen-to-square"></i> </button>
                                                </form>
                                                <form action="ativar" method="get">
                                                    <input type="hidden" name="idusuario" value="${experiencia.idExperiencia}" />
                                                    <input type="submit" class="btn btn-warning" value="Ativar" />
                                                </form>
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
                                    <c:forEach items="${listaFormacoes}" var="formacao">
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

                                    <div class="row" >
                                        <td>
                                            <form action="excluirformacao" method="post">
                                                <input type="hidden" name="idFormacao" value="${formacao.idFormacao}" />
                                                <input type="submit" class="btn btn-danger" value="Excluir" />
                                            </form>
                                            <form action="alterarformacao" method="get">
                                                <input type="hidden" name="idFormacao" value="${formacao.idFormacao}" />
                                                <input type="submit" class="btn btn-warning" value="Alterar" />
                                            </form>
                                            <form action="ativar" method="get">
                                                <input type="hidden" name="idusuario" value="${formacao.idFormacao}" />
                                                <input type="submit" class="btn btn-warning" value="Ativar" />
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
                                    <c:forEach items="${listaTelefones}" var="telefone">
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
                                    <div class="form-group row" >
                                        <td>
                                            <form action="excluirtelefone" method="post">
                                                <input type="hidden" name="idTelefone" value="${telefone.idTelefone}" />
                                                <button type="submit" class="btn btn-danger" > Excluir <i class="fa-solid fa-trash"></i> </button>
                                            </form>
                                            <form action="alterartelefone" method="get">
                                                <input type="hidden" name="idTelefone" value="${telefone.idTelefone}" />
                                                <button type="submit" class="btn btn-warning" > Alterar <i class="fa-solid fa-pen-to-square"></i> </button>
                                            </form>
                                            <form action="ativar" method="get">
                                                <input type="hidden" name="idusuario" value="${telefone.idTelefone}" />
                                                <input type="submit" class="btn btn-warning" value="Ativar" />
                                            </form>
                                        </td>
                                    </div>
                                    </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>#</th>
                                        <th>Funcionário</th>
                                        <th>Telefone Residencial</th>
                                        <th>Telefone Celular</th>
                                        <th>Telefone Recado</th>
                                        <th>Ação</th>
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
            "responsive": true,
            "lengthChange": false,
            "autoWidth": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    });

</script>
