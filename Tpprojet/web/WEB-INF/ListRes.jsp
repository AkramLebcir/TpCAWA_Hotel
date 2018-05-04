<%-- 
    Document   : AfficherCha
    Created on : 25-Mar-2018, 14:55:30
    Author     : alilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="/Tpprojet/static/css/materialize.min.css"  media="screen,projection"/>

        
        <link type="text/css" rel="stylesheet" href="/Tpprojet/css/minimal.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="">
        <%@ include file="navbar.jsp" %>
        <br><div><br><br></div><br>
        
         <div class="container">
            
            <div class="card">
                <div class="card-body">
                    <center> <h3 class="indigo-text text-darken-4">           Lists Des Chambres           </h3></center>
                    <br><br><!--<a href="/Tpprojet/AffichChaLib?chamLibid=1"><button type="button" class="btn btn-info btn-rounded">Room_libre</button></a>
<br><br> <a href="/Tpprojet/AffichChaLib?chamLibid=0"><button type="button" class="btn btn-info btn-rounded">Room</button></a>

                    <!--Table-->
                    <table class="table table-hover table-responsive-md table-fixed">

                        <!--Table head-->
                        <thead>
                            <tr>
                                <th> </th>
                                <th  class="indigo-text text-darken-4">client</th>
                                <th  class="indigo-text text-darken-4"> reservation</th>
                                <th  class="indigo-text text-darken-4">Date debut</th>
                                <th  class="indigo-text text-darken-4">Date fin</th>
                                <th  class="indigo-text text-darken-4">Edit</th>
                                <th  class="indigo-text text-darken-4">Delet</th>
                                
                            </tr>
                        </thead>
                        <!--Table head-->

                        <!--Table body-->
                        <tbody>
                            <c:forEach var="reservation" items="${Reservs}">
                            <tr>
                                <th scope="row">
                                    <span class="badge badge-primary badge-pill indigo-text text-darken-4">
                                        <c:out value="${  reservation.getId() }" />
                                    </span>
             
                                </th>
                                <td><c:out value="${  reservation.getIdCh()}" /></td>
                                <td><c:out value="${  reservation.getIdCl() }" /></td>
                                <td><c:out value="${  reservation.getDateD() }" /></td>
                                <td><c:out value="${  reservation.getDateF() }" /></td>
                               
                                 <td> <a href="/Tpprojet/AffichChaLib?updateid=${  reservation.id }" class="btn-floating btn-large  waves-effect waves-light  indigo darken-2"><i class="material-icons">edit</i></a></td>
                                 <td> <a href="/Tpprojet/AffichChaLib?deleteid=${  reservation.id }" class="btn-floating btn-large waves-effect waves-light red darken-2 "><i class="material-icons ">delete</i></a></td>
                           
                            </tr>
                            </c:forEach>
                        </tbody>
                        <!--Table body-->

                    </table>
                    <!--Table-->
  <!--button ajouter-->
               
            </div>
                </div>
            </div>         
            <!-- Content here -->
         </div>
         
         <div class="fixed-action-btn">
               <a href="/Tpprojet/AjouterCham" class="btn-floating btn-large waves-effect waves-light indigo darken-3 pulse"><i class="material-icons">add</i></a>
            
          </div>
         

         <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="/Tpprojet/static/js/materialize.min.js"></script>

    </body>
</html>
