package Controller;



import java.io.IOException;
import java.util.List;

import DAO.PostDaoImpl;
import DAO.UserDaoImpl;
import Models.Actor;
import Models.Post;

import java.util.ArrayList;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/* Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
  private static final long serialVersionUID = 1L;
  private UserDaoImpl compte;
  public static Boolean info_wrong=false;

    /* Default constructor. 
     */
    public Login() {
        // TODO Auto-generated constructor stub
    }

    public void init() {
     compte = new UserDaoImpl();
    }
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
     //logout(request, response);
	  try {
	       //procedure d'authentification
	              logout(request, response);
	             
	          } catch (Exception e) {
	              // TODO Auto-generated catch block
	              e.printStackTrace();
	          }
  }

  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
     try {
       //procedure d'authentification
              authenticate(request, response);
             
          } catch (Exception e) {
              // TODO Auto-generated catch block
              e.printStackTrace();
          }
  }
    private void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
  
      String logout=request.getParameter("logout");
      if(logout.equals("true")) {
        HttpSession session = request.getSession();
        session.invalidate();
        response.sendRedirect("index.html");
          return; 
      }
    
  }

  private void authenticate(HttpServletRequest request, HttpServletResponse response)
          throws Exception {
          String email = request.getParameter("email");
          String password = request.getParameter("password");
          
          HttpSession session=request.getSession();
          if (compte.validate(email, password)) {
            Integer ls =compte.getByEmail(email);
            Actor  ts= (Actor) compte.getOne(ls);
             session.setAttribute("iduser", ls);   
             session.setAttribute("nomuser", ts.getNom());
             session.setAttribute("usermail", ts.getEmail());
             session.setAttribute("usertel", ts.getPhone());
             
             PostDaoImpl postdao=new PostDaoImpl();
             final List<Post> posts = postdao.getAll();
             List<Post> pls = new ArrayList<>();
             List<Post> article = new ArrayList<>();
             for(int i=0; i<posts.size();i++)
             {
            	 if(((Post) posts.get(i)).getTypePost().equals("Post")) {
            		 pls.add(posts.get(i));
            	 }else {
            		 article.add(posts.get(i));
            	 }
             }
             session.setAttribute("posts", pls);
             session.setAttribute("size", pls.size());
             session.setAttribute("article", article);
             session.setAttribute("s", article.size());
             List<Actor> act = compte.getAll();
             List<Actor> psy = new ArrayList<>();
             for(int i=0; i<act.size();i++)
             {
            	 if(((Actor) act.get(i)).getPsyc()) {
            		 psy.add(act.get(i));
            	 }
             }
             session.setAttribute("psy", psy);
             session.setAttribute("l", psy.size());
             RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
              dispatcher.forward(request, response);
              
          } else {
        	  
            info_wrong=true;
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
              dispatcher.forward(request, response);
         }
      }
}