package bank;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Myprofile
 */
@WebServlet("/Myprofile")
public class Myprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Myprofile() {
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
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
			String sql = "select * from hema.my_profiles";
			PreparedStatement ps = c.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
			
				request.setAttribute("firstname", rs.getString("firstname"));
				request.setAttribute("lastname", rs.getString("lastname"));
				request.setAttribute("dob", rs.getString("dob"));
				request.setAttribute("address", rs.getString("address"));
				request.setAttribute("userid", rs.getString("userid"));
				request.setAttribute("password", rs.getString("password"));
				request.getRequestDispatcher("Myprofile.jsp").include(request,response);		  


			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
	}

}
