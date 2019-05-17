package bank;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Bankbalanceservlet
 */
@WebServlet("/Bankbalanceservlet")
public class Bankbalanceservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bankbalanceservlet() {
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
			
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			
			String accountnumber=request.getParameter("accountnumber");
		  String sql="select *  from hemaa.my_profiles where accountnumber=?";
		  PreparedStatement ps=c.prepareStatement(sql);
		  ps.setString(1, accountnumber);
		  ResultSet rs=ps.executeQuery();
		  if(rs.next())
		  {
			request.setAttribute("accountnumber", rs.getString("accountnumber"));
			request.setAttribute("account_balance", rs.getString("account_balance"));
			request.getRequestDispatcher("bankbalance.jsp").include(request,response);		  }
		
		else
		{
			out.println("<script>alert('Invalid account number')</script>");
			response.sendRedirect("checkbalance.jsp");
		}
	}
		catch(SQLException e)
		{
			e.printStackTrace();
		}	
		}
}
