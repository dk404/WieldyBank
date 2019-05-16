package bank;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Passwordservlet
 */
@WebServlet("/Passwordservlet")
public class Passwordservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Passwordservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{
			PrintWriter out=response.getWriter();
			String userid=request.getParameter("userid");
			String currentpassword=request.getParameter("cpwd");
			String newpassword=request.getParameter("npwd");
			String confirmpassword=request.getParameter("n1pwd");

			if(newpassword.equals(confirmpassword))
			{
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			String sql="update Hemapractice.my_profiles set password=? where userid=?";
			PreparedStatement ps=c.prepareStatement(sql);
			ps.setString(1, confirmpassword);
			ps.setString(2, userid);
			int result=ps.executeUpdate();
			if(result>0)
			{
				request.getRequestDispatcher("Login.jsp").include(request,response); 
				 out.println("<html><body>");
		         out.println("<script type=\"text/javascript\">");
		         out.println("alert('Password Changed Successfully ');");
		         out.println("</script>");
			}
			
			else
			{
			}
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		}
		
	
		
	}


