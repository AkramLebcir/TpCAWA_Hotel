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
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.0/css/mdb.min.css" rel="stylesheet">
        
        
        
          <!--  jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

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
                    <input type="text" name="num" id="num" class="form-control">
                    <label for="form1" >Numero de la chambre</label>
                </div>


                   <!-- Text input-->

                <div class="md-form">
                    <input type="text" name="etage" id="etage" class="form-control">
                    <label for="form1" >Etage</label>
                </div>

                   <!-- Text input-->
                <div class="md-form">
                    <input type="text" name="nomLit" id="nomLit" class="form-control">
                    <label for="form1" >Numbre  de lit</label>
                </div>

                   <!-- Text input-->  
                <div class="md-form">
                    <input type="text" name="prix" id="prix" class="form-control">
                    <label for="form1" >Prix</label>
                </div>

                   <br>

                       <label class="col-md-4 control-label">Disponible </label> 
                       <br>
                     <label class="switch">

                     <input type="checkbox" name="dispo" id="dispo">
                     <span class="slider round"></span>
                   </label>

                <div class="md-form">
                    <input type="text" id="dureedebut" name="dureedebut" class="form-control">
                    <label for="datedebut" >Date debut</label>
                </div>
                <div class="md-form">
                    <input type="text" id="dureefin" name="dureefin" class="form-control">
                    <label for="datefin" >Date fin</label>
                </div>

                <div class="text-center py-4 mt-3">
                    <button type="submit" class="btn btn-primary" >Enregistrer<span class="glyphicon glyphicon-send"></span></button>
                </div>
            </form>
            <!-- Material form register -->

        </div>
        <!-- Card body -->
    </form>
</div>

<!-- Card -->
                      

        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.13.0/umd/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.0/js/mdb.min.js"></script>
    
    <script>
        $(document).ready(function(){
          var date_input=$('input[name="dureedebut"]'); //our date input has the name "date"
          var date_input2=$('input[name="dureefin"]'); //our date input has the name "date"
          var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
          var options={
            format: 'mm/dd/yyyy',
            container: container,
            todayHighlight: true,
            autoclose: true,
          };
          date_input.datepicker(options);
          date_input2.datepicker(options);
        })
    </script>

    </body>
</html>
