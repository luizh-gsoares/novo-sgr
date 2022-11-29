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
          <h1>Lista de Experiências</h1>
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
                    <th>Código</th>
                    <th>Código Empregado</th>
                    <th>Função</th>
                    <th>Local</th>
                    <th>CRE</th>
                    <th>Data de Entrada</th>
                    <th>Data de Saida</th>
                </tr>
                </thead>
                <tbody>
                  <c:forEach items="${listaDeExperiencias}" var="experiencia">
                    <tr>
                      <td>${experiencia.idExperiencia}</td>
                      <td>${experiencia.idEmpregado}</td>
                      <td>${experiencia.funcao}</td>
                      <td>${experiencia.local}</td>
                      <td>${experiencia.cre}</td>
                      <td>${experiencia.dtEntrada}</td>
                      <td>${experiencia.dtSaida}</td>
                      <div class="form-group row" >
                        <td>
                          <form action="excluirexperiencia" method="post">
                            <input type="hidden" name="idExperiencia" value="${experiencia.idExperiencia}" />
                            <button type="submit" class="btn btn-danger" > Excluir <i class="fa-solid fa-trash"></i> </button>
                          </form>
                          <form action="alterarexperiencia" method="get">
                            <input type="hidden" name="idExperiencia" value="${experiencia.idExperiencia}" />
                            <button type="submit" class="btn btn-warning" > Alterar <i class="fa-solid fa-pen-to-square"></i> </button>
                          </form>
                        </td>
                      </div>
                    </tr>
                  </c:forEach>
                </tbody>
                <tfoot>
                  <tr>
                    <th>Código</th>
                    <th>Código Empregado</th>
                    <th>Função</th>
                    <th>Local</th>
                    <th>CRE</th>
                    <th>Data de Entrada</th>
                    <th>Data de Saida</th>
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
