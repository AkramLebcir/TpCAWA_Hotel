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
        <title>List of rooms</title>
        
         <style>
        body {font-family: Arial, Helvetica, sans-serif;}
        
        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
        
        /* Modal Content */
        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 30%;
        }
        
        /* The Close Button */
        .close {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        
        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }
        </style>
        
    </head>
    <body class="grey lighten-2">
        <%@ include file="navbar.jsp" %>
        <br><div><br><br></div><br>
        
         <div class="container">
            
            <div class="card">
                <div class="card-body">
                    <center> <h3 class="indigo-text text-darken-4">  List of rooms           </h3></center>
                    <br><br><!--<a href="/Tpprojet/AffichChaLib?chamLibid=1"><button type="button" class="btn btn-info btn-rounded">Room_libre</button></a>
<br><br> <a href="/Tpprojet/AffichChaLib?chamLibid=0"><button type="button" class="btn btn-info btn-rounded">Room</button></a>

                    <!--Table-->
                    <table class="table table-hover table-responsive-md table-fixed">

                        <!--Table head-->
                        <thead>
                            <tr>
                                <th class="indigo-text text-darken-4">ID</th>
                                <th  class="indigo-text text-darken-4">Number</th>
                                <th  class="indigo-text text-darken-4">Storey</th>
                                <th  class="indigo-text text-darken-4">Number of beds</th>
                                <th  class="indigo-text text-darken-4">Price</th>
                                <th  class="indigo-text text-darken-4">Available</th>
                                <th  class="indigo-text text-darken-4">Edite</th>
                                <th  class="indigo-text text-darken-4">Delete</th>
                                
                            </tr>
                        </thead>
                        <!--Table head-->

                        <!--Table body-->
                        <tbody>
                            <c:forEach var="chambre" items="${Chambres}">
                            <tr>
                                <th scope="row">
                                    <span class="badge badge-primary badge-pill indigo-text text-darken-4">
                                        <c:out value="${ chambre.id }" />
                                    </span>
                                </th>
                                <td><c:out value="${ chambre.num }" /></td>
                                <td><c:out value="${ chambre.etage }" /></td>
                                <td><c:out value="${ chambre.nomLit }" /></td>
                                <td><c:out value="${ chambre.prix }" /></td>
                                <td><c:out value="${ chambre.dispo }" /></td>
                                 <td> <a href="/Tpprojet/AffichChaLib?updateid=${ chambre.id }" class="btn-floating btn-large  waves-effect waves-light  indigo darken-2"><i class="material-icons">edit</i></a></td>
                                 <td> <a href="/Tpprojet/AffichChaLib?deleteid=${ chambre.id }" class="btn-floating btn-large waves-effect waves-light red darken-2 "><i class="material-icons ">delete</i></a></td>
                                <!-- <td> <button  class="myBtn  ">Open Modal</button></td>-->
                                 

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
         
         
      <!-- 
      <div id="myModal" class="modal">

 
  <div class="modal-content">
        <span class="close">&times;</span>
    <h4>Delete</h4>
    <p>Do you want to delete the client ?</p>
      
      <div class="modal-footer">
            <a href="#!" class="modal-close waves-effect waves-red btn-flat">Disagree</a>
            <a href="#!" class="modal-close waves-effect waves-green btn-flat">Agree</a>
          </div>
 
    </div>
      -->
 
</div>
         
         
     <!--    
         <script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

$("#myBtn").click(function (){
    
})
// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>-->
         
         
    </body>
</html>
