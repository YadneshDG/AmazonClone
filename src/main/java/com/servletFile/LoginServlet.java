package com.servletFile;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub


		 try {
			  
	            // Initialize the database
	            Connection con = DbConnection.initializeDatabase();
	  
	            // Create a SQL query to insert data into demo table
	            // demo table consists of two columns, so two '?' is used
	            String n=request.getParameter("Uname");
				String p=request.getParameter("Pass");
				PreparedStatement ps=con.prepareStatement("select U_name from register where U_name=? and Password=?");
				System.out.println("connection done");

				ps.setString(1,n);
				ps.setString(2,p);
				ResultSet rs=ps.executeQuery();
				if(rs.next()){
					RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
					rd.forward(request,response);
				}else {
					
					response.sendRedirect("error.html");
//					out.println("<html><body>");
//					out.println("<h1>Login failed!!</h1><br>");
//					out.println("<a href=./error.html>");
//					out.println("</body></html>");
				}
				
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}
