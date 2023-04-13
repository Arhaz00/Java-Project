package Controller;

import java.io.FileOutputStream;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import DAO.PostDaoImpl;
import Models.Post;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

//@MultipartConfig(fileSizeThreshold=1024*1024*10, 	// 10 MB 
//maxFileSize=1024*1024*50,      	// 50 MB
//maxRequestSize=1024*1024*100)  

@WebServlet("/GestionPost")

public class GestionPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// public static InputStream fis;
	PostDaoImpl postdao = new PostDaoImpl();
	Post post = new Post();
	DateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GestionPost() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings("resource")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		String name = request.getParameter("name");
		String text = request.getParameter("content");
		String photo = request.getParameter("photo");
		String type = request.getParameter("typePost");

		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		HttpSession session = request.getSession();
		Integer iduser = (Integer) session.getAttribute("iduser");
		System.out.println("user " + iduser);

		post.setContent(text);
		post.setName(name);
		post.setImg(photo);
		post.setUser(iduser);
		post.setTime(timestamp);
		post.setTypePost(type);
		System.out.println(post);
		postdao.add(post);

		// delete POST
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("post.jsp");
		dispatcher.forward(request, response);

	}

}