package Controller;


import java.io.IOException;
import java.io.PrintWriter;

import DAO.RDVDaoImpl;
import Models.RDV;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


/**
 * Servlet implementation class GestionRDV
 */
@WebServlet("/GestionRDV")

public class GestionRDV extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public GestionRDV() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		RDVDaoImpl rdvdao = new RDVDaoImpl();
		PrintWriter out = response.getWriter();
		String gravite = request.getParameter("gravite");
		String dateRDV = request.getParameter("dateRDV");
		String lieuRDV = request.getParameter("lieu");
		RDV rdv=new RDV();
		rdv.setDateRDV(dateRDV);
		rdv.setGravite(gravite);
		rdv.setLieuRDV(lieuRDV);
		rdvdao.add(rdv);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("RDV.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
