<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%%>
<!-- Modal -->
<div class=" modal fade" id="modal-default">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Cadastrar Perfil</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- form start -->
                <form name="frmPerfil" action="cadastrarperfil">
                    <div class="card-body">
                        <div class="form-group">
                            <input type="hidden" id="idperfil" name="idPerfil">
                        </div>
                        <div class="form-group">
                            <label for="idnome">Nome do Perfil :</label>
                            <input type="text" class="form-control" id="idNome" name="nome" required>
                        </div>
                        <div class="form-group">
                            <label for="iddata">Data de Cadastro :</label>
                            <input type="date" class="form-control" id="idData" name="dataCadastro" required>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                        <button type="submit" class="btn btn-success swalDefaultSuccess">Gravar</button>
                    </div>
                </form>
                <!-- /.form-end -->
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<script>

</script>    