<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset = "ISO-8859-1">
<title>Connexion</title>
</head>
<body>
	<div class="container" >
  		<div class="screen">
   			<div class="screen__content">
      			<form class="login" action="MonServlet2" method="post">
       			 	<div class="login__field">
          				<i class="login__icon fas fa-user"></i>
          				<input type="text" name="pseudo" class="login__input" placeholder="Pseudo">
        			</div>
       	 			<div class="login__field">
         				<i class="login__icon fas fa-lock"></i>
          				<input type="password" name="mdp" class="login__input" placeholder="Password">
        			</div>
        			<button class="button login__submit" type="submit">
          				<span class="button__text">Se connecter</span>
          				<i class="button__icon fas fa-chevron-right"></i>
					</button> 
      			</form>
          	</div>
        </div>
    </div>
</body>
<style>

@import url('https://fonts.googleapis.com/css?family=Raleway:400,700');

​

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