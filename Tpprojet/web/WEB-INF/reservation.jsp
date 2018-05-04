<%-- 
    Document   : AjoutCli
    Created on : 25-Mar-2018, 17:00:10
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    <body>
           
        
      <%@ include file="navbar.jsp" %>
      <br><div><br><br></div><br>
        
      <div class="card">

    <form class="well form-horizontal" action="ReserviCham" method="post"  id="contact_form">
        <div class="card-content">

        <!-- Form Name -->
        <legend><center><h2>Reserever </h2></center></legend>

        <!-- Text input-->
        <p id="profile-name" class="profile-name-card">${err}</p>
        <div class="input-field col s12">
            <i class="material-icons prefix">person</i>
            <input type="number" name="numId" id="numId" class="form-control"  value="${idc}" required>
            <label for="form1" >Id consomer</label>
        </div>
       <div class="input-field col s12">
            <i class="material-icons prefix">hotel</i>
            <input type="number" name="numId" id="nbrlit" class="form-control"  value="" required>
            <label for="form1" >nombre de lit</label>
        </div>
     

        

       <div class="input-field col s12">
        <select id="nationalite" name="chambre" class="browser-default">
            <option value="<c:out value="${client.nationalite}"/>"  selected>Choose your Room</option>
            <c:forEach var="utilisateur" items="${Clientslib}">
                <option value="<c:out value="${utilisateur.id}"/>"><c:out value="${utilisateur.id}"/></option>
            </c:forEach>
            </select>

            

        </div>
        <!-- Text input-->
       


        <!-- Text input-->
        
        </br> </br>

        <div class="input-field col s12">
            <i class="material-icons prefix">date_range</i>
            
            <input type="date" name="tel" id="tel" class="form-control" value="" required>
            <label for="form1" >date debut</label>
        </div>
             </br>
             <div class="input-field col s12">
                 <i class="material-icons prefix">date_range</i>
                 <input type="date" name="tel" id="tel" class="form-control" value="<c:out value="${client.getTel()}"/>" required>
            <label for="form1" >date fin</label>
        </div>
 </br>
        <div class="text-center mt-4">
            <center> <button class="btn btn-rounded large" type="submit">Save</button></center>
        </div>
        </div>
    </form>
</div>



<!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="/Tpprojet/static/js/materialize.min.js"></script>
      <script type="text/javascript">
           var elem = document.querySelector('select');
            var instance = M.FormSelect.init(elem, options);


<!-- JQuery -->

  // Or with jQuery


            $(document).ready(function(){
              $('select').formSelect();
            });
      </script>
    </body>
</html>
