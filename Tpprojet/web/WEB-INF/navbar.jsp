<%-- 
    Document   : navbar
    Created on : 21-Mar-2018, 22:23:11
    Author     : alilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!--Main Navigation-->
<header>

    <nav>
    <div class="nav-wrapper">
      <a href="#" class="brand-logo"><strong>${ sessionScope.user }</strong></a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="home">Home</a></li>
        <li><a href="/Tpprojet/AjouterCli">Add client</a></li>
        <li><a href="/Tpprojet/AjouterCham">Add room</a></li>
        <li><a href="/Tpprojet/AffiClis">View clients</a></li>
        <li><a href="/Tpprojet/AffichChaLib">View rooms</a></li>
        <li><a href="/Tpprojet/ReserviCham">Reservation</a></li>
        <li><a href="/Tpprojet/Sinup">Sign up</a></li>
      </ul>

    </div>
  </nav>
</header>