<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%%>
<!DOCTYPE html>
<jsp:include page="/Templates/header.jsp"></jsp:include>
<jsp:include page="/Templates/menu.jsp"></jsp:include>
    <title>Cadastrar Funcionário</title>              

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Cadastrar Funcionário</h1>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <form class="needs-validation" novalidate action="#" method="get">
            <div class="container">
                <legend> Dados Pessoais </legend>
                <hr>
                <!-- Campos Dados Pessoais -->
                <div class="row mb-4">
                    <div class="col">
                        <div class="form-outline">
                            <label class="form-label" for="form6Example1"  required>Nome Completo</label>
                            <input type="text" id="form6Example1" class="form-control" id="validationCustom01" name="nome"/>
                        </div>                       
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <label class="form-label" for="form6Example2" required> Matricula</label>
                            <input type="text" id="form6Example2" class="form-control" name="matricula"/>
                        </div>
                    </div>
                </div>

                <!-- Segunda linha -->
                <div class="row">
                    <div class="col">
                        <div class="form-outline mb-4">
                            <label class="form-label">Apelido</label>
                            <input type="text" class="form-control" name="apelido" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <label class="form-label">Naturalidade</label>
                            <input type="text" class="form-control" name="naturalidade"/>
                        </div>
                    </div>
                    <div class="col">
                        <label class="form-label">U.F</label>
                        <div class="form-outline">
                            <input type="text" class="form-control" name="uf"/>
                        </div>
                    </div>
                </div>

                <!-- Terceira linha -->
                <div class="row">
                    <div class="col">
                        <div class="form-group">
                            <label>Sexo</label>

                            <select class="form-control select2">           
                                <c:forEach items="${listSexo}" var="sexo">
                                    <option value="${sexo.id}">${sexo.tipo}</option>
                                </c:forEach>
                            </select>



                        </select>
                    </div>
                </div>

                <div class="col">
                    <div class="form-outline">
                        <label class="form-label">Estado Civil</label>
                        <input type="text" class="form-control" name="nome"/>
                    </div>
                </div>
            </div>

            <!-- Quarta linha -->
            <div class="row">
                <div class="col">
                    <div class="form-outline mb-4">
                        <label class="form-label">R.G</label>
                        <input type="text" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label">Data de Expedição</label>
                        <input type="text" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label">Órgão Expedidor/U.F</label>
                        <input type="text" class="form-control" />
                    </div>
                </div>
            </div>

            <!-- Quinta linha  -->
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1">CPF</label>
                        <input type="text" id="form6Example1" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Título Eleitoral</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Zona</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Sessão</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <legend>Filiação</legend>
            <hr>
            <!-- Primeira linha  -->
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1">Mãe</label>
                        <input type="text" id="form6Example1" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Pai</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <legend>Localização</legend>
            <hr>
            <!-- Primeira linha  -->
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1">Endereço</label>
                        <input type="text" id="form6Example1" class="form-control" />
                    </div>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Cidade</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">CEP</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Fone Residencial</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Telefone Contato</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Fone para recado</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <legend>Formação Educacional</legend>
            <hr>
            <!-- Primeira linha  -->
            <div class="col mb-4">
                <div class="col">
                    <div class="form-group">
                        <label>Nível Escolaridade</label>
                        <select class="form-control select2" >
                            <option selected="selected">Alabama</option>
                            <option>Alaska</option>
                            <option>California</option>
                            <option>Delaware</option>
                            <option>Tennessee</option>
                            <option>Texas</option>
                            <option>Washington</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Cursando</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Escola/Faculdade</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Semestre</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
                <div class="row mb-4">
                    <div class="col">
                        <div class="form-outline">
                            <label class="form-label" for="form6Example2">Cursos Concluidos</label>
                            <textarea type="text" id="form6Example2" class="form-control"></textarea>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="container">
            <legend>Localização</legend>
            <hr>
            <!-- Primeira linha  -->
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1">Cargo/Função</label>
                        <input type="text" id="form6Example1" class="form-control" />
                    </div>
                </div>

                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Nível/E.P</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Data Adimissão</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Regime Contratual</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Lotação</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Data lotação na CREC</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">CRE anterior</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">CRE/Escolas onde já trabalhou</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Data de Entrada</label>
                        <input type="date" id="form6Example2" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Data Saída</label>
                        <input type="date" id="form6Example2" class="form-control" />
                    </div>
                </div>
            </div>


            <!-- Submit button -->
            <button type="submit" class="btn btn-primary btn-block mb-4">Enviar</button>
        </div>
    </form>

    <jsp:include page="/Templates/footer.jsp"></jsp:include>