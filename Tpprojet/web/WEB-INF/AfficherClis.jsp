<%-- 
    Document   : AfficherClis
    Created on : 25-Mar-2018, 14:56:28
    Author     : alilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<<<<<<< HEAD
        <!-- Font Awesome -->
        <link rel="stylesheet" href="/Tpprojet/static/MDB/css/font-awesome.min.css">
        <!-- Bootstrap core CSS -->
        <link href="/Tpprojet/static/MDB/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="/Tpprojet/static/MDB/css/mdb.min.css" rel="stylesheet">
=======
        <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="/Tpprojet/static/css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
>>>>>>> 01e473f36d8a95632ec0ca7b1bcbd141e5c2b384
        
       <link type="text/css" rel="stylesheet" href="/Tpprojet/css/minimal.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@ include file="navbar.jsp" %>
         <br><div><br><br></div><br>
         
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

<<<<<<< HEAD
         <!-- JQuery -->
        <script type="text/javascript" src="/Tpprojet/static/MDB/js/jquery-3.2.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="/Tpprojet/static/MDB/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="/Tpprojet/static/MDB/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="/Tpprojet/static/MDB/js/mdb.min.js"></script>
=======
        <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="/Tpprojet/static/js/materialize.min.js"></script>
>>>>>>> 01e473f36d8a95632ec0ca7b1bcbd141e5c2b384
    </body>
</html>
