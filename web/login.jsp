<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

<style>
    body{
        background-color: #083046;
    }
    #fundomenu {
        background-color: #08AEEA;
        background-image: linear-gradient(0deg, #08AEEA 0%, #2AF598 100%);
        color: aliceblue;
        font-family: Arial, Helvetica, sans-serif;
        border-radius: 7px;
        padding: 30px;
    }

    label {
        color: #1d6c48;

    }
    input{
        margin-top: 0.5rem;
    }

    #fundomenu a {
        color: #fbfbfb;
    }

    #fundomenu button {
        background-color: #2AF598;
        border: none;
        -webkit-box-shadow: -5px 4px 35px -10px rgba(133, 133, 133, 0.64);
        -moz-box-shadow: -5px 4px 35px -10px rgba(133, 133, 133, 0.64);
        box-shadow: -5px 4px 35px -10px rgba(133, 133, 133, 0.64);
    }

</style>

<section class="vh-100">
    <div class="container-fluid h-custom">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md-9 col-lg-6 col-xl-5">
                <img src="Resources/images/SGR.png" class="img-fluid" alt="Sample image">
            </div>
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1" id="fundomenu">
                <form action="login" method="post">
                    <div class="pb-5" align="center"><span>
                            <h1 class="display-6">Seja bem Vindo!</h1>
                        </span></div>
                    <!-- lOGIN input -->
                    <div class="form-outline mb-4">
                        <label class="form-label" for="form3Example3">Login</label>
                        <input type="text" id="form3Example3" class="form-control form-control-lg" placeholder="Login"
                               name="login" />
                    </div>

                    <!-- Password input -->
                    <div class="form-outline mb-3">
                        <label class="form-label" for="form3Example4">Senha</label>
                        <input type="password" id="form3Example4" class="form-control form-control-lg" placeholder="Senha"
                               name="senha" />
                    </div>

                    <div class="text-center text-lg-start mt-4 pt-2">
                        <button type="submit" class="btn btn-primary btn-lg"
                                style="padding-left: 2.5rem; padding-right: 2.5rem;">Entrar</button>
                    </div> <br> <span> OU <a href="cadastrarusuario">Cadastre um novo</a> </span>

                </form>
            </div>
        </div>
    </div>
    <div
        class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
        <p style="color: red"> ${erro} </p>
        <!-- Copyright -->
        <div class="text-white mb-3 mb-md-0">
            Copyright © 2020. All rights reserved SHARK.
        </div>
    </div>
</section>
