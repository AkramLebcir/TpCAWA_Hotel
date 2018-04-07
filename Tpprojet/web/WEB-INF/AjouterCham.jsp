<%-- 
    Document   : AjouterCham
    Created on : 27-Mar-2018, 15:58:01
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

        <!-- Card -->
        <div class="card">

        <form class="well form-horizontal" action="AffichChaLib" method="post"  id="contact_form">
            <!-- Card body -->
            <div class="card-body" >
                <legend><center><h2>Ajouter une chambre</h2></center></legend>
                <p id="profile-name" class="profile-name-card">${ERRCh}</p>

                <!-- Material form register -->
                <div class="md-form">
                    <input type="number" name="num" id="num" class="form-control" required>
                    <label for="num" >Numero de la chambre</label>
                </div>

                   <!-- Text input-->
                <div class="md-form">
                    <input type="number" name="etage" id="etage" class="form-control" required>
                    <label for="etage" >Etage</label>
                </div>

                   <!-- Text input-->
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
            </div>
            <!-- Card body -->
        </form>
        <!-- Material form register -->
    </div>
    <!-- Card -->
                      
        <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="/Tpprojet/static/js/materialize.min.js"></script>
    </body>
</html>
