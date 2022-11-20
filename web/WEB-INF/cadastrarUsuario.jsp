
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="/Templates/header.jsp"></jsp:include>

<div class="card card-primary">
  <div class="card-header">
    <h3 class="card-title">Cadastrar Usuário</h3>
  </div>
  <!-- /.card-header -->
  <!-- form start -->
  <form>
    <div class="card-body">
      <div class="form-group">
        <label for="exampleInputLogin">Login</label>
        <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter email" name="login">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="senha">
      </div>
      <div class="form-group">
        <button type="submit" class="btn btn-primary btn-lg"
              style="padding-left: 2.5rem; padding-right: 2.5rem;">Cadastrar</button>
      </div>
    </div>
  </form>
</div>