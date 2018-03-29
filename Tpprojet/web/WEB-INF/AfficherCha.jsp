<%-- 
    Document   : AfficherCha
    Created on : 25-Mar-2018, 14:55:30
    Author     : alilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Bootstrap core CSS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.0/css/mdb.min.css" rel="stylesheet">
        
        <!-- JQuery -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.13.0/umd/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.0/js/mdb.min.js"></script>
        <link type="text/css" rel="stylesheet" href="/Tpprojet/css/minimal.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="navbar.jsp" %>
         <div class="container">
  
            <h1>Lists Des Chambres !</h1>

            <ul class="list-group">
                <c:forEach var="chambre" items="${Chambres}">
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <c:out value="${ chambre.num }" /> 
                        <c:out value="${ chambre.etage }" /><br>
                        <c:out value="${ chambre.nomLit }" /> 
                        <c:out value="${ chambre.prix }" />
                        <c:out value="${ chambre.dispo }" /><br>
                        <c:out value="${ chambre.dureedebut }" />
                        <c:out value="${ chambre.dureefin }" />
                        <span class="badge badge-primary badge-pill">
                            <c:out value="${ chambre.id }" />
                        </span>
                    </li>
                </c:forEach>
            </ul>
            <!-- Content here -->
         </div>
    </body>
</html>
