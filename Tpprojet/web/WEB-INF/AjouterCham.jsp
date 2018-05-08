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
    <body class="grey lighten-2"> 
     <!-- inclusion de navbar-->   
         <%@ include file="navbar.jsp" %>
            <br><div><br><br></div><br>
        <!-- Card -->
        <div class="card center-align">

        <form class="well form-horizontal" action="AffichChaLib" method="post"  id="contact_form">
            <!-- Card body -->
            <div class="card-content">
                <legend><center><h2>${varcham} room</h2></center></legend>
                <p id="profile-name" class="profile-name-card" d>${chambre.getId()}</p>
              
                <!-- Material form register -->
                <div class="input-field col s12">
                    <input id="num" name="num" type="number" class="validate" value="<c:out value="${chambre.getNum()}"/>" required>
                    <label for="num">Numero de la chambre</label>
               </div>
  
                   <!-- Text input-->
                <div class="input-field col s12">
                    <input id="etage" name="etage" type="number" class="validate" value="<c:out value="${chambre.getEtage()}"/>" required>
                    <label for="etage">Etage</label>
               </div>
                
                   <!-- Text input-->

                <div class="input-field col s12">
                    <input id="nomLit" name="nomLit" type="number" class="validate" value="<c:out value="${chambre.getNomLit()}"/>" required>
                    <label for="nomLit">Numbre  de lit</label>
               </div>
                
                   <!-- Text input-->
                <div class="input-field col s12">
                    <input id="prix" name="prix" type="number" class="validate" value="<c:out value="${chambre.getPrix()}"/>" required>
                    <label for="prix">Prix</label>
               </div>
              
                   <div class="text-center mt-4">
                        <button class="btn-large z-depth-0 indigo" type="submit">Save</button>
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
