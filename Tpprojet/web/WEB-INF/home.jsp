<%-- 
    Document   : accuill
    Created on : 21-Mar-2018, 21:39:04
    Author     : alilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr">
    <head>
        <title>Menu</title>
     

        <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="/Tpprojet/static/css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

        <link type="text/css" rel="stylesheet" href="/Tpprojet/css/minimal.css" />
    </head>
    <body class="hidden-sn mdb-skin grey lighten-2" >
      <%@ include file="navbar.jsp" %>

      <br>
    <!--  <p>page accuile ${user}</p> 
      <strong>${user}</strong>
      
      -->
      
      
      
      <div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
      <div class="container">
        <br><br>
        <h1 class="header center white-text ">Bienvenue! ${user}</h1>
        <div class="row center">
          <h5 class="header col s12 light white-text">Ajouter un Client</h5>
        </div>
        <div class="row center">
          <a href="/Tpprojet/AjouterCli" id="download-button" class="btn-large waves-effect waves-light teal lighten-1">Commencer</a>
        </div>
        

      </div>
    </div>
          
    <div class="parallax"><img src="/Tpprojet/static/userBackground.jpg" alt="Unsplashed background img 1" style="transform: translate3d(-50%, 207.728px, 0px); opacity: 1;"></div>
  </div>
      
       <footer class="page-footer indigo darken-1">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text"></h5>
                <p class="grey-text text-lighten-4"></p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">List</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="/Tpprojet/ReserviCham?idR=1">List des reservaton</a></li>
                  <li><a class="grey-text text-lighten-3" href="/Tpprojet/AjouterCli">Ajouter Client</a></li>
                  <li><a class="grey-text text-lighten-3" href="/Tpprojet/AjouterCham">Ajouter Chambre</a></li>
                  
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            © 2014 Copyright Text
            <a class="grey-text text-lighten-4 right" href="#!"></a>
            </div>
          </div>
        </footer>
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="/Tpprojet/static/js/materialize.min.js"></script>

    </body>
</html>