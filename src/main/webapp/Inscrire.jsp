<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Inscription</title>
</head>
<body>
	<div class="container" >

  		<div class="screen">

   			<div class="screen__content">

      			<form class="login" action="MonServlet" method="post">
	      			<table>
	      				<tr><td>Formulaire d'inscription<td></tr>
	      			</table>
	      					<div class="nom__field">
	
	          				<i class="nom__icon fas fa-user"></i>
	
	          				<input type="text" class="nom" placeholder="Nom d'utilisateur" name="nom">
	
	        			</div>
	        			
	        			<div class="prenom__field">
	
	          				<i class="prenom__icon fas fa-user"></i>
	
	          				<input type="text" class="prenom" placeholder="Prenom de l'utilisateur" name="prenom">
	
	        			</div>
	        			
	        			<div class="pseudo__field">
	
	          				<i class="pseudo__icon fas fa-user"></i>
	
	          				<input type="text" class="pseudo" placeholder="Pseudo de l'utilisateur" name="pseudo" >
	
	        			</div>
	
	       			 	<div class="mail__field">
	
	          				<i class="mail__icon fas fa-user"></i>
	
	          				<input type="email" class="mail" placeholder="Addresse mail" name="mail" >
	
	        			</div>
	
	       	 			<div class="mdp__field">
	
	         				<i class="login__icon fas fa-lock"></i>
	
	          				<input type="password" class="mdp" placeholder="Mot de passe" name=mdp>
	
	        			</div>
	        			
	        			<div class="rmdp__field">
	
	         				<i class="login__icon fas fa-lock"></i>
	
	          				<input type="password" class="rmdp" placeholder=" Confirmer Mot de passe" name=rmdp>
	
	        			</div>
	
	        			<button class="button login__submit" type=submit>
	
	          				<span class="button__text">S'incrire</span>
	
	          				<i class="button__icon fas fa-chevron-right"></i>
	
						</button> 
					
      			</form>

          	</div>
        </div>
    </div>
</body>
<style>

@import url('https://fonts.googleapis.com/css?family=Raleway:400,700');

* {

  box-sizing: border-box;

  margin: 0;

  padding: 0; 

  font-family: Raleway, sans-serif;

}

​

body {

  background: linear-gradient(90deg, #C7C5F4, #776BCC);   

}

​

.container {

  display: flex;

  align-items: center;

  justify-content: center;

  min-height: 100vh;

}

​

.screen {   

  background: linear-gradient(90deg, #5D54A4, #7C78B8);   

  position: relative; 

  height: 600px;

  width: 360px; 

  box-shadow: 0px 0px 24px #5C5696;

}

​

.screen__content {

  z-index: 1;

  position: relative; 

  height: 100%;

}

​

.screen__background {   

  position: absolute;

  top: 0;

  left: 0;

  right: 0;

  bottom: 0;

  z-index: 0;

  -webkit-clip-path: inset(0 0 0 0);

  clip-path: inset(0 0 0 0);  

}

</style>
</html>