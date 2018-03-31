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
    </head>
    <body>
        
        
        
     <!-- inclusion de navbar-->   
         <%@ include file="navbar.jsp" %>
        


<!-- Card -->
<div class="card" style="width:500px">
    
<legend><center><h2><b>Ajouter une chambre</b></h2></center></legend><br>
<p id="profile-name" class="profile-name-card">${ERRCh}</p>
<form class="well form-horizontal" action="AffichChaLib" method="post"  id="contact_form">
    <!-- Card body -->
    <div class="card-body" >

        <!-- Material form register -->
        
        <label for="num">Numero de la chambre</label>  

     <input  name="num" id="num" placeholder="Numero de la chambre" class="form-control"  type="text">
   
<br>

<!-- Text input-->


  <label class="col-md-4 control-label" >Etage</label> 
  <input name="etage" id="etage" placeholder="nemero de l'etage" class="form-control"  type="text">
   
  <br>


<!-- Text input-->


  <label class="col-md-4 control-label" >Numbre  de lit</label> 
    <input name="nomLit" id="nomLit" placeholder="nbr de lit" class="form-control"  type="text">
   
    <br>
<!-- Text input-->  

  <label class="col-md-4 control-label">Prix.</label>  
     <input name="prix" id="prix" placeholder="" class="form-control" type="text">
     <br>

    <label class="col-md-4 control-label">Disponible </label> 
    <br>
  <label class="switch">
  <input type="checkbox">
  <span class="slider round"></span>
</label>
         
    <br>
    <br>
<label class="control-label col-md-4 requiredField" for="datedebut">Date debut </label>
  <input class="form-control" id="dureedebut" name="dureedebut" placeholder="MM/DD/YYYY" type="text"/>
  <br>
     <label class="control-label col-md-4 requiredField" for="datefin">Date fin </label>
   <input class="form-control" id="dureefin" name="dureefin" placeholder="MM/DD/YYYY" type="text"/>
       
     
          
      

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
