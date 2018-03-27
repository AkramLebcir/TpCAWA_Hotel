<%-- 
    Document   : AfficherClis
    Created on : 25-Mar-2018, 14:56:28
    Author     : alilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script type="text/javascript" src="fn.js"></script>
        <link type="text/css" rel="stylesheet" href="/Tpprojet/css/minimal.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@ include file="navbar.jsp" %>
         <div class="container">
  
            <h1>Hello World!</h1>

            <ul class="list-group">
                <c:forEach var="utilisateur" items="${Clients}">
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <c:out value="${ utilisateur.prenom }" /> 
                        <c:out value="${ utilisateur.nom }" />
                        <span class="badge badge-primary badge-pill">14</span>
                    </li>
                </c:forEach>
            </ul>
            <!-- Content here -->
         </div>
    </body>
</html>
