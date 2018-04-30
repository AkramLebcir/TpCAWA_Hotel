<%-- 
    Document   : AfficherClis
    Created on : 25-Mar-2018, 14:56:28
    Author     : alilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="/Tpprojet/static/css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

        
       <link type="text/css" rel="stylesheet" href="/Tpprojet/css/minimal.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="brown lighten-3">
         <%@ include file="navbar.jsp" %>
         <br><div><br><br></div><br>
         
         <div class="container row">
          
            <div class="card col s11">
                <div class="card-body">
                    <h3>              Lists Des Clients </h3>
                    <!--Table-->
                    <table class="table table-hover table-responsive-md table-fixed">

                        <!--Table head-->
                        <thead>
                            <tr>
                                <th>  </th>
                                <th>Name</th>
                                <th>Surname</th>
                                <th>Country</th>
                                <th>Address</th>
                                <th>Phone number</th>
                                <th>ident Number</th>
                                
                                <th>Edit</th>
                                <th>Delet</th>
                            </tr>
                        </thead>
                        <!--Table head-->

                        <!--Table body-->
                        <tbody>
                            <c:forEach var="utilisateur" items="${Clients}">
                            <tr>
                                <th scope="row">
                                    <span class="badge badge-primary badge-pill brown-text text-darken-4">
                                        <c:out value="${ utilisateur.id }" />
                                    </span>
                                </th>
                                <td><c:out value="${ utilisateur.nom }" /></td>
                                <td><c:out value="${ utilisateur.prenom }" /></td>
                                <td><c:out value="${ utilisateur.nationalite }" /></td>
                                <td><c:out value="${ utilisateur.address }"/></td> 
                                <td><c:out value="${ utilisateur.tel }" /></td>
                                <td><c:out value="${ utilisateur.numId }" /></td>
                                
                               <td> <a href="/Tpprojet/AffiClis?updateid=${ utilisateur.id }" class="btn-floating btn-large  cyan  brown lighten-1"><i class="material-icons">edit</i></a></td>
                             <td> <a href="/Tpprojet/AffiClis?deleteid=${ utilisateur.id }" class="btn-floating btn-large waves-effect waves-light brown darken-2 "><i class="material-icons ">delete</i></a></td>
                            <td> <a href="/Tpprojet/ReserviCham?idCli=${ utilisateur.id }" class="btn-rounded btn-large waves-effect waves-light brown darken-2 ">reserver</a></td>
                            
                            </tr>
                            </c:forEach>
                            
                        </tbody>
                        <!--Table body-->

                    </table>
                    <!--Table-->
            </div> 
            </div>
            
     <!--button ajouter-->
               
            
              
    <!-- Content here -->
         </div>
           <div class="row">
   <div class="col offset-s10 s2">
                 </div>
          </div>
          <div class="fixed-action-btn">
               <a href="/Tpprojet/AjouterCli" class="btn-floating btn-large waves-effect waves-light brown darken-4 pulse"><i class="material-icons">add</i></a>
            
          </div>
        <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="/Tpprojet/static/js/materialize.min.js"></script>

    </body>
</html>
