
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>

<jsp:include page="Templates/header.jsp"></jsp:include>
        <div id="menu">
        <jsp:include page="Templates/menu.jsp"></jsp:include>
        </div>
    <div id="container">    
 
<style>
    .back {
        width: 100vw;
        height: 100vh;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
    }

    .card {
        -webkit-box-shadow: 2px 2px 14px -3px rgba(0, 0, 0, 0.39);
        -moz-box-shadow: 2px 2px 14px -3px rgba(0, 0, 0, 0.39);
        box-shadow: 2px 2px 14px -3px rgba(0, 0, 0, 0.39);
    }
</style>

<body>
    <div class="back">

        <div class="container text-dark d-flex justify-content-evenly">
            <div class="row">
                <div class="col-sm">
                    <div class="card text-dark" style="width: 18rem;">
                        <img src="funcionario.png" class="card-img-top" alt="...">
                        <div class="card-body bg-primary">
                            <h5 class="card-title text-light">Empregados e Funcionários</h5>
                            <p class="card-text text-light">Gerenciar as informações dos empregados e funcionários.</p>
                            <a href="listarempregado" class="btn btn-light">Gerenciar</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm ">
                    <div class="card text-dark" style="width: 18rem;">
                        <img src="user.png" class="card-img-top" alt="...">
                        <div class="card-body bg-primary">
                            <h5 class="card-title text-light">Usuários e contas</h5>
                            <p class="card-text text-light">Clique para ir ao gerenciamento de usuários e contas.</p>
                            <a href="listarempregado" class="btn btn-light">Gerenciar</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>


        
    </div>

<jsp:include page="Templates/footer.jsp"></jsp:include>

