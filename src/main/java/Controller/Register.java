package Controller;

import jakarta.servlet.http.HttpServlet;

import java.io.IOException;
import java.io.PrintWriter;

import DAO.UserDaoImpl;
import Models.Actor;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//public static Boolean email_exist = false;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		System.out.println("user mazal madazt");
		UserDaoImpl userdao = new UserDaoImpl();
		System.out.println("user dazt");
		
		Actor user = new Actor();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String username = request.getParameter("nom");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String date = request.getParameter("date");
		int phone = Integer.parseInt(request.getParameter("phone"));
		Boolean psyc = Boolean.parseBoolean(request.getParameter("psyc"));
        System.out.println(psyc);

		user.setEmail(email);
		user.setNom(username);
		user.setPassword(password);
		user.setDate(date);
		user.setPhone(phone);
		user.setPsyc(psyc);
		userdao.add(user);
	    
        HttpSession session=request.getSession();
        Integer ls =userdao.getByEmail(email);
        session.setAttribute("iduser", ls); 
        
		
		response.sendRedirect("home.jsp");
		
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
// TODO Auto-generated method stub

		System.out.println("hadi Get");
		doGet(request, response);

	}

}