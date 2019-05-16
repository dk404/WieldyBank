package bank;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Bankservlet
 */
@WebServlet("/useridservlet")
public class useridservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public useridservlet() {
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
			String accountnumber=request.getParameter("accountnumber");
			String currentuserid=request.getParameter("userid");
			String confirmuserid=request.getParameter("nuserid");
			String newuserid=request.getParameter("n1userid");

			if(newuserid.equals(confirmuserid))
			{
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			String sql="update Hemaa.my_profiles set userid=? where accountnumber=?";
			PreparedStatement ps=c.prepareStatement(sql);
			ps.setString(1, confirmuserid);
			System.out.println(accountnumber);
			ps.setString(2, accountnumber);
			int result=ps.executeUpdate();
			if(result>0)
			{
				request.getRequestDispatcher("Password.jsp").include(request,response); 
				 out.println("<html><body>");
		         out.println("<script type=\"text/javascript\">");
		         out.println("alert('Userid Changed Successfully ');");
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


