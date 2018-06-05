<%-- 
    Document   : index
    Created on : 01/06/2018, 11:08:21
    Author     : Rian Alves
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/WEB-INF/jspf/bootstrap.jspf" %>
        <script type="text/javascript">
            var eventos = <%=request.getAttribute("eventosJson")%>;
        </script>
        <script src="js/Cards.js"></script>
        <title>Amigo Oculto - DCC192</title>
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
            <a class="navbar-brand" href="#">
                <img src="/docs/4.1/assets/brand/bootstrap-solid.svg" width="30" height="30" alt="">Amigo Oculto</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="novo-evento.html?usuario=${usuario}">Novo Evento</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="eventos.html?usuario=${usuario}">Gerenciar Eventos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Sobre</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="login.html">Sair</a>
                    </li>

                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Busque na Plataforma">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Busca</button>
                </form>
            </div>
        </nav>
        <h1>Colocar uma Imagem</h1>
        <br/>
        <h3 class="text-center">Lista de Eventos que você participa</h3>
    <br/>
<!--    <table class="table table-hover">
        <thead>
            <tr class="text-center">
                <th>Título</th>
                <th>Valor Mínimo</th>
                <th>Data do Sorteio</th>
                <th>Data do Evento</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="evento" items="${eventos}">
                <tr class="text-center">
                    <td>${evento.titulo}</td> 
                    <td>${evento.valorMinimo}</td> 
                    <td>${evento.dataSorteio}</td> 
                    <td>${evento.dataEvento}</td> 
                </tr>  
            </c:forEach>
        </tbody>

    </table>-->
    
    <div class='row' id="contentPanel">
        
    </div>
</body>
</html>
