<%-- 
    Document   : navbar
    Created on : 21-Mar-2018, 22:23:11
    Author     : alilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!--Main Navigation-->
<header>

    <nav class="navbar fixed-top navbar-expand-lg navbar-dark indigo">
        <a class="navbar-brand" href="home"><strong>${ sessionScope.user }</strong></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/Tpprojet/AjouterCham">Add room</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/Tpprojet/AjouterCli">Add customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/Tpprojet/AffiClis">View clients</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/Tpprojet/AffichChaLib">View rooms</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                
                <li class="nav-item">
                    <a class="nav-link" href="#contact">sinup</a>
                </li>
              </ul>
        </div>
    </nav>

    <div class="view intro-2">
        <div class="full-bg-img">
            <div class="mask rgba-black-light flex-center">
                <div class="container text-center white-text">
                    <div class="white-text text-center wow fadeInUp">
                        <h2>This Navbar is fixed</h2>
                        <h5>It will always stay visible on the top, even when you scroll down</h5>
                        <br>
                        <p>Full page intro with background image will be always displayed in full screen mode, regardless of device </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</header>
<nav class="navbar-inverse">
    
    <div class="navbar-collapse collapse">
        <div class="navbar-header">
      <a class="navbar-brand" href="home">${ sessionScope.user }</a>
    </div>
    <ul class="nav navbar-nav navbar-left">
       <li><a name="nav" href="/Tpprojet/AjouterCham">Ajouter chambre</a></li>
        <li><a name="nav" href="/Tpprojet/AjouterCli">Ajouter Client</a></li>
        <li><a name="nav" href="/Tpprojet/AffiClis">Afficher Clients</a></li>
        <li><a name="nav" href="/Tpprojet/AffichChaLib">Afficher Chambres</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#about">Right</a></li>
      <li><a href="#contact">sinup</a></li>
    </ul>
  </div>
    
</nav>
