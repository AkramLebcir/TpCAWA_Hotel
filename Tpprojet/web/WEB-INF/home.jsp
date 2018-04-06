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
     
        <link type="text/css" rel="stylesheet" href="/Tpprojet/css/minimal.css" />
        
        <!-- Font Awesome -->
        <link rel="stylesheet" href="/Tpprojet/static/MDB/css/font-awesome.min.css">
        <!-- Bootstrap core CSS -->
        <link href="/Tpprojet/static/MDB/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="/Tpprojet/static/MDB/css/mdb.min.css" rel="stylesheet">
        
        <link type="text/css" rel="stylesheet" href="/Tpprojet/css/minimal.css" />
    </head>
    <body class="hidden-sn mdb-skin">
      <%@ include file="navbar.jsp" %>
      <br><br>
      <p>page accuile ${user}</p> 
      <strong>${user}</strong>
      
      <!-- JQuery -->
        <script type="text/javascript" src="/Tpprojet/static/MDB/js/jquery-3.2.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="/Tpprojet/static/MDB/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="/Tpprojet/static/MDB/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="/Tpprojet/static/MDB/js/mdb.min.js"></script>
    </body>
</html>