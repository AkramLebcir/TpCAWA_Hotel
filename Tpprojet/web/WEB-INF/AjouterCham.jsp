<%-- 
    Document   : AjouterCham
    Created on : 27-Mar-2018, 15:58:01
    Author     : alilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

        
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
                      
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="/Tpprojet/static/MDB/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="/Tpprojet/static/MDB/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="/Tpprojet/static/MDB/js/mdb.min.js"></script>
    
    </body>
</html>
