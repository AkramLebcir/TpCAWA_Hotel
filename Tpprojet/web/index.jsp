<%-- 
    Document   : index
    Created on : 21-Mar-2018, 18:46:36
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
      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page 2</title>
        
        
        <link type="text/css" rel="stylesheet" href="/Tpprojet/css/minimal.css" />
    </head>
    <body>
          <div class="nav-background">
        <div class="ea k" style="background-image: url('//cdn.shopify.com/s/files/1/1775/8583/t/1/assets/icon-seamless.png?4270082251086927343');"></div>
      </div>
        <br><br><br>
       <div class="container">
        <div class="row valign-wrapper">
         <div class="col s5 offset-s3 valign">
          <div class="card center-align">
        <!--      <img src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" alt="avatar mx-auto white" class="avatar" style="width: 40%;height: 20%;border-radius: 50%;">-->
        <h4 class="center"> Login</h4>
        <p id="profile-name" class="profile-name-card">${ERR}</p>
           
           <form action="home" method="POST">
               <div class="input-field col s12">
                   <i class="material-icons prefix">person</i>
                <input id="user" name="user" type="text" class="validate">
                <label for="user">Username</label>
               </div>
               <div class="input-field col s12">
                   <i class="material-icons prefix">lock_open</i>
                <input id="pass" name="pass" type="password" class="validate">
                <label for="user">Password</label>
               </div>
               
                  <button class="btn-large z-depth-0 indigo" type="submit" name="action">Sign in
                    <i class="material-icons right">send</i>
                  </button>
               <div id="remember" class="checkbox">
                  <label>
                     <input type="checkbox" value="remember-me"> Remember me
                  </label>
                </div>
            </form><!-- /form -->
                </div>
           </div>
        </div>
           </div>
          <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="/Tpprojet/static/js/materialize.min.js"></script>
    </body>
</html>
