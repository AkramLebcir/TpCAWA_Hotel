<%-- 
    Document   : AjouterCham
    Created on : 27-Mar-2018, 15:58:01
    Author     : alilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<<<<<<< HEAD
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Bootstrap core CSS -->
        <link href="/Tpprojet/static/MDB/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="/Tpprojet/static/MDB/css/mdb.min.css" rel="stylesheet">
        
        
        
          <!--  jQuery -->
<script type="text/javascript" src="/Tpprojet/static/MDB/js/jquery-1.11.3.min.js"></script>

<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />
=======
        <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="/Tpprojet/static/css/materialize.min.css"  media="screen,projection"/>
>>>>>>> 01e473f36d8a95632ec0ca7b1bcbd141e5c2b384

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

        <link type="text/css" rel="stylesheet" href="/Tpprojet/css/minimal.css" />
        <link type="text/css" rel="stylesheet" href="/Tpprojet/css/togel.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajouetr Page</title>
        <style>
            .card {
                width:35%;
            }

            @media (max-width: 755px) {
                .card{
                    width:75%;
                }
            }
        </style>
    </head>
    <body> 
     <!-- inclusion de navbar-->   
         <%@ include file="navbar.jsp" %>
            <br><div><br><br></div><br>
        <!-- Card -->
        <div class="card center-align">

        <form class="well form-horizontal" action="AffichChaLib" method="post"  id="contact_form">
            <!-- Card body -->
            <div class="card-content">
                <legend><center><h2>Ajouter une chambre</h2></center></legend>
                <p id="profile-name" class="profile-name-card">${ERRCh}</p>

                <!-- Material form register -->
                <div class="input-field col s12">
                    <input id="num" name="num" type="number" class="validate" required>
                    <label for="num">Numero de la chambre</label>
               </div>

                   <!-- Text input-->
                <div class="input-field col s12">
                    <input id="etage" name="etage" type="number" class="validate" required>
                    <label for="etage">Etage</label>
               </div>
                
                   <!-- Text input-->
<<<<<<< HEAD
                <div class="md-form">
                    <input type="number" name="nomLit" id="nomLit" class="form-control" required>
                    <label for="nomLit" >Numbre  de lit</label>
                </div>

                   <!-- Text input-->  
                <div class="md-form">
                    <input type="number" name="prix" id="prix" class="form-control" required>
                    <label for="prix" >Prix</label>
                </div>

                <div class="text-center py-4 mt-3">
                    <button type="submit" class="btn btn-primary" >Enregistrer<span class="glyphicon glyphicon-send"></span></button>
                </div>
=======
                <div class="input-field col s12">
                    <input id="nomLit" name="nomLit" type="number" class="validate" required>
                    <label for="nomLit">Numbre  de lit</label>
               </div>
                
                   <!-- Text input-->
                <div class="input-field col s12">
                    <input id="prix" name="prix" type="number" class="validate" required>
                    <label for="prix">Prix</label>
               </div>
              
                   <div class="text-center mt-4">
                        <button class="btn btn-primary" type="submit">Save</button>
                   </div>
>>>>>>> 01e473f36d8a95632ec0ca7b1bcbd141e5c2b384
            </div>
            <!-- Card body -->
        </form>
        <!-- Material form register -->
    </div>
    <!-- Card -->
                      
<<<<<<< HEAD
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
