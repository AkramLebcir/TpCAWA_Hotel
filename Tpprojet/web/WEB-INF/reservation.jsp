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
         <link rel="stylesheet" href="/Tpprojet/static/MDB/css/bootstrap.min.css">
         <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
        <script type="text/javascript" src="fn.js"></script>
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
        <title>Ajouetr Page</title>
    </head>
<<<<<<< HEAD
    <body>
        
        
        
     <!-- inclusion de navbar-->   
         <%@ include file="navbar.jsp" %>
        
<div class="container" id="">
<form class="well form-horizontal" action="AjouterCham" method="post"  id="contact_form">
<fieldset>

<!-- Form Name -->
<legend><center><h2><b>Ajouter une chambre</b></h2></center></legend><br>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">Numero de la chambre</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
 
  <input  name="nom" placeholder="Numero de la chambre" class="form-control"  type="text">
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Etage</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
 
  <input name="prenom" placeholder="nemero de l'etage" class="form-control"  type="text">
    </div>
  </div>
</div>

  
  

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Numbre  de lit</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  
  <input name="user_password" placeholder="nbr de lit" class="form-control"  type="number">
    </div>
  </div>
</div>

<!-- Text input-->

       
<div class="form-group">
  <label class="col-md-4 control-label">Prix.</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
       
        <input name="contact_no" placeholder="" class="form-control" type="number">
    </div>
  </div>
</div>
<div class="form-group" >
    <label class="col-md-4 control-label">Disponible </label> 
    <div class="col-md-4 inputGroupContainer">
 
     <div id="dispo" class="btn-group" data-toggle="buttons">
    <label class="btn btn-success active"><input type="radio" name="radioGroup" value="yes">Yes</label>
    <label class="btn btn-danger "><input type="radio" name="radioGroup" onclick="$('#mandatory2').val('no');">No</label>
</div>
          
        </div>
</div>



<div class="form-group ">
     <label class="control-label col-md-4 requiredField" for="datedebut">Date debut </label>
    <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
      
     
        <div class="input-group-addon">
         <i class="fa fa-calendar">
         </i>
        </div>
        <input class="form-control" id="date" name="datedebut" placeholder="MM/DD/YYYY" type="text"/>
       
     
            </div>
        </div>
     </div>
<div class="form-group ">
     <label class="control-label col-md-4 requiredField" for="datefin">Date fin </label>
    <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
      
     
        <div class="input-group-addon">
         <i class="fa fa-calendar">
         </i>
        </div>
        <input class="form-control" id="date" name="datefin" placeholder="MM/DD/YYYY" type="text"/>
       
     
            </div>
        </div>
     </div>
     






                             
                           

<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
 <button type="submit" class="btn btn-warning" >Enregistrer<span class="glyphicon glyphicon-send"></span></button>
  </div>
</div>
</div>
   
    <!-- Extra JavaScript/CSS added manually in "Settings" tab -->
<!-- Include jQuery -->
<script type="text/javascript" src="/Tpprojet/static/MDB/js/jquery-1.11.3.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
	$(document).ready(function(){
		var date_input=$('input[name="datefin"]'); //our date input has the name "date"
                var date_input2=$('input[name="datedebut"]'); //our date input has the name "date"
		var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
		date_input.datepicker({
			format: 'mm/dd/yyyy',
			container: container,
			todayHighlight: true,
			autoclose: true,
		});
                date_input2.datepicker({
			format: 'mm/dd/yyyy',
			container: container,
			todayHighlight: true,
			autoclose: true,
		});
                
	})
</script>     
         
         
         
         
         
         
         
         
         
         
         
         
         
         
=======
    <body>   
    <!-- inclusion de navbar-->   
    <%@ include file="navbar.jsp" %>
        
    <div class="container" id="">

    </div>
    <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="/Tpprojet/static/js/materialize.min.js"></script>
>>>>>>> 01e473f36d8a95632ec0ca7b1bcbd141e5c2b384
    </body>
</html>
