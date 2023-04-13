package Controller;

import java.io.IOException;

import DAO.CommentaireDaoImpl;
import Models.Commentaire;
import jakarta.servlet.http.HttpServlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/GestionCommentaire")
public class GestionCommentaire extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public GestionCommentaire() {
		// TODO Auto-generated constructor stub
	}

	CommentaireDaoImpl comment = new CommentaireDaoImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		doGet(request, response);
		String text = request.getParameter("comment");
		HttpSession session = request.getSession();
		System.out.println("idpost: " + request.getParameter("idpost"));
		session.getAttribute("iduser");

		Commentaire c = new Commentaire();
		c.setPost(Integer.parseInt(request.getParameter("idpost")));
		c.setRep(text);
		c.setUser((Integer) session.getAttribute("iduser"));

		comment.add(c);
		response.sendRedirect("template.jsp");

	}

}
