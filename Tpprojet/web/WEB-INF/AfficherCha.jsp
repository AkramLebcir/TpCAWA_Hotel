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
        
        <link type="text/css" rel="stylesheet" href="/Tpprojet/css/minimal.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="navbar.jsp" %>
         <div class="container">
            
            <div class="card">
                <div class="card-body">
                    <h3>Lists Des Chambres !</h3>

                    <!--Table-->
                    <table class="table table-hover table-responsive-md table-fixed">

                        <!--Table head-->
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Number</th>
                                <th>Storey</th>
                                <th>Number of beds</th>
                                <th>Price</th>
                                <th>Available</th>
                                <th></th>
                                <th></th>
                                
                            </tr>
                        </thead>
                        <!--Table head-->

                        <!--Table body-->
                        <tbody>
                            <c:forEach var="chambre" items="${Chambres}">
                            <tr>
                                <th scope="row">
                                    <span class="badge badge-primary badge-pill">
                                        <c:out value="${ chambre.id }" />
                                    </span>
                                </th>
                                <td><c:out value="${ chambre.num }" /></td>
                                <td><c:out value="${ chambre.etage }" /></td>
                                <td><c:out value="${ chambre.nomLit }" /></td>
                                <td><c:out value="${ chambre.prix }" /></td>
                                <td><c:out value="${ chambre.dispo }" /></td>
                                <td><a href="/Tpprojet/AffichChaLib?updateid=${ chambre.id }"><button type="button" class="btn btn-danger btn-rounded">Update</button></a></td>
                                <td><a href="/Tpprojet/AffichChaLib?deleteid=${ chambre.id }"><button type="button" class="btn btn-danger btn-rounded">Delate</button></a></td>
                            </tr>
                            </c:forEach>
                        </tbody>
                        <!--Table body-->

                    </table>
                    <!--Table-->

                </div>
            </div>         
            <!-- Content here -->
         </div>
         
         
         
         <!-- JQuery -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.13.0/umd/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.0/js/mdb.min.js"></script>
    </body>
</html>
