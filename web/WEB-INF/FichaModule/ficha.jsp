<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Lista de Contatos</title>
<jsp:include page="/Templates/header.jsp"></jsp:include>
<jsp:include page="/Templates/menu.jsp"></jsp:include>

    <style>
        td{
            colspan: 8 ;
            padding: 2px;
        }
        th{
            colspan: 8 ;
            width: auto;
        }

    </style>

    <!-- Content Wrapper. Contains page content -->
<div class="container1">
                                        
                                        <div class="container"> <!-- Endereço -->
                                            <div class="row bg-dark mb-3 my-0 pt-2"><h5> Endereço </h5></div>
                                            
                                            <div class="row">
                                                <div class="col"><h6>CEP</h6></div>
                                                <div class="col"><h6>Logradouro</h6></div>
                                                <div class="col"><h6>Complemento</h6></div>
                                                <div class="col"><h6>Cidade<h6></div>
                                            </div>
                                            <c:forEach items="${listaEnderecos}" var="endereco">
                                            <div class="row">
                                                <div class="col"><p>${endereco.cep}</p></div>
                                                <div class="col"><p>${endereco.logradouro}</p></div>
                                                <div class="col"><p>${endereco.complemento}</p></div>
                                                <c:forEach items="${listaDeCidades}" var="cidade">
                                                <c:if test="${endereco.idCidade == cidade.idCidade}">
                                                <div class="col"><p>${cidade.nome}</p></div>
                                                </c:if></c:forEach></c:forEach>  
                                            </div>
                                        </div>
                                   
                                       
                                        <div class="container">
                                            <div class="row bg-dark  mb-3 my-0 pt-2"><h5> Experiencia </h5></div>
                                           
                                            <div class="row">
                                                <div class="col"><h6>Função</h6></div>
                                                <div class="col"><h6>Carga Horária</h6></div>
                                                <div class="col"><h6>Vinculo</h6></div>
                                                <div class="col"><h6>Local<h6></div>
                                                <div class="col"><h6>CRE<h6></div>
                                                <div class="col"><h6>Data de Entrada<h6></div>
                                                <div class="col"><h6>Data de Saída<h6></div>
                                            </div>
                                            <c:forEach items="${listaExperiencias}" var="experiencia">
                                            <div class="row">
                                                <div class="col"><p>${experiencia.funcao}</p></div>
                                                <div class="col"><p>${experiencia.cargaHoraria}</p></div>
                                                <c:forEach items="${listaDeTipovinculos}" var="vinculo">
                                                <c:if test="${experiencia.tipoVinculo == vinculo.idTipovinculo}">
                                                <div class="col"><p>${vinculo.tipo}</p></div></c:if></c:forEach>
                                                <div class="col"><p>${experiencia.local}</p></div>
                                                <div class="col"><p>${experiencia.cre}</p></div>
                                                <div class="col"><p>${experiencia.dtEntrada}</p></div>
                                                <div class="col"><p>${experiencia.dtSaida}</p></div>
                                            </c:forEach>                                                     
                                            </div>                                          
                                        </div>
                                       
                                          <div class="container">
                                            <div class="row bg-dark mb-3 my-0 pt-2    "><h5> Contato </h5></div>
                                            
                                            <div class="row">
                                                <div class="col"><h6>Telefone Residencial</h6></div>
                                                <div class="col"><h6>Telefone Celular</h6></div>
                                                <div class="col"><h6>Telefone para Recado</h6></div>
                                            </div>
                                            <c:forEach items="${listaTelefones}" var="telefone">
                                            <div class="row">
                                                <div class="col"><p>${telefone.telefoneResidencial}</p></div>
                                                <div class="col"><p>${telefone.telefoneCelular}</p></div>
                                                <div class="col"><p>${telefone.telefoneRecado}</p></div>
                                            </c:forEach>                                                     
                                        </div>                                          
                                        </div>
                                                                                
                                    
                                        <div class="container">
                                            <div class="row bg-dark mb-3 my-0 pt-2"><h5> Formação </h5></div>
                                            
                                            <div class="row">
                                                <div class="col"><h6>Escolaridade</h6></div>
                                                <div class="col"><h6>Curso</h6></div>
                                                <div class="col"><h6>Instituição</h6></div>
                                                <div class="col"><h6>Semestre<h6></div>
                                                <div class="col"><h6>Data de Inicio<h6></div>
                                                <div class="col"><h6>Data de Finzalização<h6></div>
                                            </div>
                                            <c:forEach items="${listaFormacoes}" var="formacao">
                                            <div class="row">                                              
                                               <c:forEach items="${listaDeTipocursos}" var="tipocurso">
                                                <c:if test="${formacao.idTipocurso == tipocurso.idTipocurso}">
                                                <div class="col"><p>${tipocurso.nome}</p></div>
                                                </c:if></c:forEach>        
                                                <div class="col"> <p>${formacao.curso}</p>  </div>  
                                                <div class="col"><p>${formacao.instituicao}</p></div>
                                                <div class="col"><p>${formacao.semestre}</p></div>
                                                <div class="col"><p>${formacao.dtInicio}</p></div>
                                                <div class="col"><p>${formacao.dtFim}</p></div>
                                            </c:forEach>                                                                                                                                       
                                        </div>
                                        </div> 
                                      
                                        
                                      
                                      
                                       
                            
                                    </div>
                                    <!-- /.card-body -->


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