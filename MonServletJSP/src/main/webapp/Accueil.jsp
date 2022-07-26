<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="monservlet.utilisateur"%>

<!DOCTYPE html>
<html>
<head>
<style>0000
@import url("https://fonts.googleapis.com/css?family=Raleway:400,700");
</style>
<meta charset="utf-8">
<title>Accueil</title>
</head>
<body> 
<% 
	String Nom = (String) request.getAttribute("nom");
	String Prenom = (String) request.getAttribute("prenom");
	String Pseudo = (String) request.getParameter("pseudo");
	String Mail = (String) request.getAttribute("mail");
%>
<h1 align="center"> Bienvenu ${nom }  <%= Prenom %> !</h1>
<div>
	
	<table align="center">
		<h2 align="center"> Liste des inscrits</h2> 
			<thead>
					<tr>
						<td>Nom</td>   
						<td>Prenom</td>
						<td>Pseudo</td>
						<td>Email</td>
					</tr>
			</thead>
			<tbody>
				<% List<utilisateur> users= (ArrayList<utilisateur>) session.getAttribute("liste"); 
					for (utilisateur user : users) {%>
					<tr>
						<td><% out.print(user.getNom()); %></td>   
						<td><% out.print(user.getPrenom()); %></td>
						<td><% out.print(user.getPseudo()); %></td>
						<td><% out.print(user.getEmail()); %></td>
					</tr>
				<%}%>
				
			</tbody>
	</table>
</div>
<form action="MonServlet2" method="post" >
<input type="submit" id="Déconnecter" value="Déconnecter" name="Déconnecter" >
</form>
</body>
</html>
