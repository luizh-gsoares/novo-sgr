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
          <h1>Lista de Formações</h1>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
  
           <div class="card-header d-flex justify-content-between">
            <a type="button" class="btn btn-secondary" href="cadastrarendereco"
               > Cadastrar Endereço <i class="fa-solid fa-floppy-disk"></i>
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
                    <th>Código</th>
                    <th>CEP</th>
                    <th>Logradouro</th>
                    <th>Complemento</th>
                    <th>Cidade</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${listaDeEnderecos}" var="endereco">
                    <tr>
                      <td>${endereco.idEndereco}</td>
                      <td>${endereco.cep}</td>
                      <td>${endereco.logradouro}</td>
                      <td>${endereco.complemento}</td>
                      <td>${endereco.idCidade}</td>
                      <div class="row" >
                        <td>
                          <form action="excluirendereco" method="post">
                            <input type="hidden" name="idendereco" value="${endereco.idEndereco}" />
                            <input type="submit" class="btn btn-danger" value="Excluir" />
                          </form>
                          <form action="alterarendereco" method="get">
                            <input type="hidden" name="idendereco" value="${endereco.idEndereco}" />
                            <input type="submit" class="btn btn-warning" value="Alterar" />
                          </form>
                        </td>
                      </div>
                    </tr>
                  </c:forEach>
                </tbody>
                <tfoot>
                  <tr>
                    <th>Código</th>
                    <th>CEP</th>
                    <th>Logradouro</th>
                    <th>Complemento</th>
                    <th>Cidade</th>
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
