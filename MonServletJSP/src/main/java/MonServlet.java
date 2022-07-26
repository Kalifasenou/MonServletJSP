import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import monservlet.utilisateur;


/**
 * Servlet implementation class MonServlet
 * @param <utilisateur>
 */
@WebServlet("MonServlet")
public class MonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//request.getRequestDispatcher("/Inscrire.jsp").forward(request, response);
		this.getServletContext().getRequestDispatcher("/Inscrire.jsp").forward(request, response);
	}

	/**
	 * @param user 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		//request.getRequestDispatcher("/Accueil.jsp").forward(request, response);
		HttpSession session = request.getSession();
		List<utilisateur> liste = (List)session.getAttribute("liste");
		if (liste==null) {
			liste= new ArrayList();	}
		String Nom = request.getParameter("nom");
		String Prenom = request.getParameter("prenom");
		String Pseudo = request.getParameter("pseudo");
		String Mail = request.getParameter("mail");
		String Mdp = request.getParameter("mdp");
		String RMdp = request.getParameter("rmdp");
		
		request.setAttribute("nom", Nom);
		request.setAttribute("prenom", Prenom);
		request.setAttribute("mail", Mail);
		request.setAttribute("mdp", Mdp);
		request.setAttribute("rmdp", RMdp);

		String erreur;
		
		if (!"".equals(Nom) && !"".equals(Prenom)&& !"".equals(Pseudo)&& !"".equals(Mail)&& !"".equals(Mdp)&& !"".equals(RMdp)) {
			if (Mdp.equals(RMdp)) {
				utilisateur user_1 = new utilisateur(Nom,Prenom,Pseudo,Mail);
				
				request.setAttribute("utilisateur", user_1);
				liste.add(user_1);
				session.setAttribute("liste", liste);
				
				this.getServletContext().getRequestDispatcher("/Accueil.jsp").forward(request, response);
							} else {
								erreur= "Veuillez un même mot de passe";
								request.setAttribute("Erreur_Mdp", erreur);
								this.getServletContext().getRequestDispatcher("/Inscrire.jsp").forward(request, response);
							}  
			} else {
			erreur = "Veuillez remplir tout les champs";
			this.getServletContext().getRequestDispatcher("/Inscrire.jsp").forward(request, response);
			
		}
				
	}
}
