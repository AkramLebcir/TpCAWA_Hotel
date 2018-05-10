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
    <nav class="nav-extended indigo row">

  
    <div class="nav-background">
      <div class="pattern active" style="background-image: url('//cdn.shopify.com/s/files/1/2030/2737/files/icon-seamless_ef568d79-394b-49ab-a3c5-128827d788e8.png?v=1496294246');"></div>
    </div>
  

  <div class="nav-wrapper container">
    <a href="/" itemprop="url" class="brand-logo site-logo">
      
       
      
    </a>

    
    <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons"></i></a>
  
  </div>
       
  <div class="nav-header center s5 offset-s4">
  

 
        <h1>Receptionniste</h1>
        <div class="tagline">authentication</div>
      
      
    

  </div>
</nav>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <body class="grey lighten-2">
        
        <br><br><br><br><br><br><br><br><br><br><br><br><br>
     <main role="main" id="MainContent">
    <div class="section container">
  <div class="row">
    <div class="col s12 m6 offset-m3">
      <div class="card login-wrapper">
        <div class="card-content">
            <div id="CustomerLoginForm" > 
              
           
           <form action="home" method="POST">
               <h4 class="center"> Login</h4>
             <p id="profile-name" class="profile-name-card">${ERR}</p>
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
               
                  <button class="btn-large col s12 indigo " type="submit" name="action">Sign In
                    
                  </button>
               <div id="remember" class="checkbox center">
                  <label>
                     <input type="checkbox" value="remember-me"> Remember me
                  </label>
                </div>
            </form><!-- /form -->
                  </form>

          </div>
        </div>
      </div>
    </div>
  </div>
</div>c
                </main>
          <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="/Tpprojet/static/js/materialize.min.js"></script>
    </body>
</html>

