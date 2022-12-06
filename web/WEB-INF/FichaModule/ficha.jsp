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
        title{
            text-align: center;
            color: blue;
        }
    </style>

    <!-- Content Wrapper. Contains page content -->
                                               

                                    <div class="content-wrapper">   
                                       <div class="container pt-3"> <!-- Endereço -->
                                            
                                            <c:forEach items="${listaEmpregados}" var="empregado"> 
                                            
                                            <div class="row bg-dark mb-3 my-0 pt-2"><h5> Dados Pessoais </h5></div>                                        
                                            <div class="row">
                                                <div class="col"><h6>Nome</h6></div>
                                                <div class="col"><h6>Matricula</h6></div>
                                                <div class="col"><h6>Nome Social</h6></div>
                                                <div class="col"><h6>Etnia<h6></div>
                                                <div class="col"><h6>Nacionalidade<h6></div>
                                                <div class="col"><h6>Naturalidade<h6></div>
                                            </div>
                                            
                                            <div class="row">
                                               <div class="col"><p>${empregado.nome}</p></div> 
                                               <div class="col"><p>${empregado.matricula}</p></div> 
                                               <div class="col"><p>${empregado.nomeSocial}</p></div> 
                                               <div class="col"><p>${empregado.etnia}</p></div> 
                                               <div class="col"><p>${empregado.nacionalidade}</p></div> 
                                               <div class="col"><p>${empregado.naturalidade}</p></div> 
                                            </div>
                                             
                                            <div class="row">                
                                                <div class="col"><h6>UF<h6></div>
                                                <div class="col"><h6>Data de Nascimento<h6></div>
                                                <div class="col"><h6>Sexo<h6></div>
                                                <div class="col"><h6>Estado Civil<h6></div>
                                                <div class="col"><h6>RG<h6></div>
                                                <div class="col"><h6>Data de Expedição<h6></div>
                                            </div>
                                            
                                            <div class="row">
                                               <div class="col"><p>${empregado.uf}</p></div> 
                                               <div class="col"><p>${empregado.dataNasc}</p></div> 
                                               <div class="col"><p>${empregado.sexo}</p></div> 
                                               <div class="col"><p>${empregado.estadoCivil}</p></div> 
                                               <div class="col"><p>${empregado.rg}</p></div> 
                                               <div class="col"><p>${empregado.dataExpedicao}</p></div> 
                                            </div>
                                              
                                            <div class="row">
                                                <div class="col"><h6>Órgão Expedidor<h6></div>
                                                <div class="col"><h6>CPF<h6></div>
                                                <div class="col"><h6>Zona Eleitoral<h6></div>
                                                <div class="col"><h6>Sessão<h6></div>
                                                <div class="col"><h6>Titulo Eleitoral<h6></div>
                                                <div class="col"><h6>Email<h6></div>
                                            </div>
                                            
                                            <div class="row">
                                               <div class="col"><p>${empregado.orgaoExpedidor}</p></div> 
                                               <div class="col"><p>${empregado.cpf}</p></div> 
                                               <div class="col"><p>${empregado.zonaEleitoral}</p></div> 
                                               <div class="col"><p>${empregado.secao}</p></div> 
                                               <div class="col"><p>${empregado.tituloEleitoral}</p></div>  
                                               <div class="col"><p>${empregado.email}</p></div>    
                                            </div>
                                            
                                            <div class="row">                 
                                                <div class="col"><h6>Nome Cônjulgue<h6></div>
                                                <div class="col"><h6>Nome do Pai<h6></div>
                                                <div class="col"><h6>Nome do Mãe<h6></div>
                                                <div class="col"><h6>PCD<h6></div>                                            
                                            </div>
                                            
                                            <div class="row">                                   
                                               <div class="col"><p>${empregado.nomeConjugue}</p></div> 
                                               <div class="col"><p>${empregado.nomePai}</p></div> 
                                               <div class="col"><p>${empregado.nomeMae}</p></div> 
                                               <div class="col"><p>${empregado.especial}</p></div>  
                                            </div>
                                            </c:forEach>
                                        
                                            <c:choose>
                                            <c:when test="${empregado.idEndereco == null}">
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
                                            <div class="row bg-dark  mb-3 my-0 pt-2"><h5> Experiência </h5></div>
                                            </c:when>
                                            <c:otherwise>  
                                                <div class="alert alert-primary" role="alert"> Experiência não cadastrada </div>                                          
                                            </c:otherwise>
                                            </c:choose>
                                            
                                                
                                                
                                            <c:choose>
                                            <c:when test="${empregado.idExperiencia == null}">
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
                                            </c:when>
                                            <c:otherwise>  
                                                <div class="alert alert-primary" role="alert"> Formação não cadastrada </div>                                          
                                            </c:otherwise>
                                            </c:choose>
                                            
                                                
                                                
                                            <c:choose>
                                            <c:when test="${empregado.idTelefone == null}">     
                                            <div class="row bg-dark mb-3 my-0 pt-2"><h5> Contato </h5></div>
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
                                            </c:when>
                                            <c:otherwise>  
                                              <div class="alert alert-primary" role="alert">Contatos não cadastrados</div>                                          
                                            </c:otherwise>
                                            </c:choose>
                                            
                                              
                                              
                                            <c:choose>
                                            <c:when test="${empregado.idFormacao == false}">     
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
                                            </c:when>
                                            <c:otherwise>  
                                                <div class="alert alert-primary" role="alert"> Formação não cadastrada </div>                                          
                                            </c:otherwise>
                                            </c:choose>    
                                                
                                        </div>
                                      </div>
                                     </div>
                                    <!-- /.card-body -->


    <jsp:include page="/Templates/footer.jsp"></jsp:include>
    <script>
