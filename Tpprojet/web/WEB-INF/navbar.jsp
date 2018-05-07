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
    <div class="nav-wrapper indigo darken-2">
      <a href="#" class="brand-logo"><strong>${ sessionScope.user }</strong></a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="home" class="  ">Home</a></li>
        <li><a href="/Tpprojet/AffiClis" class="  ">clients</a></li>
        <li><a href="/Tpprojet/AffichChaLib" class="  ">rooms</a></li>
        <li><a href="/Tpprojet/ReserviCham" class="  ">Reservation</a></li>
        <li><a href="/Tpprojet/Sinup" class="  ">log out</a></li>
      </ul>

    </div>
  </nav>
      
</header>