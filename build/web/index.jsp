
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>

<jsp:include page="Templates/header.jsp"></jsp:include>
        <div id="menu">
        <jsp:include page="Templates/menu.jsp"></jsp:include>
        </div>
  
 
<style>
    body{
        background-color: #f4f6f9;  
    }
    .back {
        width: 100vw;
        height: 100vh;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
    }

    
    a{
        color: black;
    }
    
    container{
        background-color: #fff;
    }
</style>

<body>
       <div class="back">
       
        <div class="container  d-flex justify-content-center">
            <div class="row">
                <div class="col-sm">
                    <div class="card" style="width: 18rem;">
                        <img src="Resources/images/funcionario.png" class="card-img-top" alt="...">
                        <div class="card-body bg-primary">
                            <h5 class="card-title text-light">Empregados e Funcionários</h5>
                            <p class="card-text text-light">Gerenciar as informações dos empregados e funcionários.</p>
                            <button href="listarempregado" class="btn btn-light text-dark">Gerenciar</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm ">
                    <div class="card" style="width: 18rem;">
                        <img src="Resources/images/user.png" class="card-img-top" alt="...">
                        <div class="card-body bg-primary">
                            <h5 class="card-title text-light">Usuários e contas</h5>
                            <p class="card-text text-light">Clique para ir ao gerenciamento de usuários e contas.</p>
                            <button href="listarusuario" class="btn btn-light text-dark">Gerenciar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>


        
    </div>

<jsp:include page="Templates/footer.jsp"></jsp:include>

