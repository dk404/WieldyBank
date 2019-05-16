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
 * Servlet implementation class Mailservlet
 */
@WebServlet("/Mailservlet")
public class Mailservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mailservlet() {
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
			String currentmailid=request.getParameter("mailid");
			String newmailid=request.getParameter("nmailid");
			String confirmmailid=request.getParameter("n1mailid");
			if(newmailid.equals(confirmmailid))
			{
			System.out.println("hai");
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			String sql="select * from hemaa.my_profiles where userid=?";
			PreparedStatement ps=c.prepareStatement(sql);
			ps.setString(1, userid);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
			if(rs.getString("mailid").equals(currentmailid))
			{
			String sqll="update Hemaa.my_profiles set mailid=? where userid=?";
			PreparedStatement ps1=c.prepareStatement(sqll);
			ps1.setString(1, confirmmailid);
			ps1.setString(2, userid);
			int result=ps1.executeUpdate();
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
				 out.println("alert('Invalid MailId or UserId');");
				 response.sendRedirect("mail.jsp");
			}
			}
		}
		}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		}
		
	

}
