<%-- 
    Document   : AfficherClis
    Created on : 25-Mar-2018, 14:56:28
    Author     : alilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="/Tpprojet/static/MDB/css/font-awesome.min.css">
        <!-- Bootstrap core CSS -->
        <link href="/Tpprojet/static/MDB/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="/Tpprojet/static/MDB/css/mdb.min.css" rel="stylesheet">
        
       <link type="text/css" rel="stylesheet" href="/Tpprojet/css/minimal.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@ include file="navbar.jsp" %>
         <div class="container">
          
            <div class="card">
                <div class="card-body">
                    <h3>Lists Des Clients !</h3>
                    <!--Table-->
                    <table class="table table-hover table-responsive-md table-fixed">

                        <!--Table head-->
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Surname</th>
                                <th>Country</th>
                                <th>Address</th>
                                <th>Phone number</th>
                                <th>Number ident</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <!--Table head-->

                        <!--Table body-->
                        <tbody>
                            <c:forEach var="utilisateur" items="${Clients}">
                            <tr>
                                <th scope="row">
                                    <span class="badge badge-primary badge-pill">
                                        <c:out value="${ utilisateur.id }" />
                                    </span>
                                </th>
                                <td><c:out value="${ utilisateur.nom }" /></td>
                                <td><c:out value="${ utilisateur.prenom }" /></td>
                                <td><c:out value="${ utilisateur.nationalite }" /></td>
                                <td><c:out value="${ utilisateur.address }" /></td> 
                                <td><c:out value="${ utilisateur.tel }" /></td>
                                <td><c:out value="${ utilisateur.numId }" /></td>
                                <td><a href="/Tpprojet/AffiClis?updateid=${ utilisateur.id }"><button type="button" class="btn btn-info btn-rounded">Update</button></a></td>
                                <td><a href="/Tpprojet/AffiClis?deleteid=${ utilisateur.id }"><button type="button" class="btn btn-danger btn-rounded">Delate</button></a></td>
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
        <script type="text/javascript" src="/Tpprojet/static/MDB/js/jquery-3.2.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="/Tpprojet/static/MDB/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="/Tpprojet/static/MDB/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="/Tpprojet/static/MDB/js/mdb.min.js"></script>
    </body>
</html>
