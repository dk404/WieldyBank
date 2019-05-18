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
 * Servlet implementation class Addbeneficiaryservlet
 */
@WebServlet("/Addbeneficiaryservlet")
public class Addbeneficiaryservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addbeneficiaryservlet() {
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
			String beneficiary_short_name=request.getParameter("bef_sname");
			String beneficiary_name=request.getParameter("bef_name");
			String account_no=request.getParameter("bef_accno");
			String ifsc_code=request.getParameter("ifsc");
			String bank_name=request.getParameter("bankname");
			String branch_name=request.getParameter("branchname");
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			String sql="insert into hemaa.add_beneficiary values(?,?,?,?,?,?)";
			PreparedStatement ps=c.prepareStatement(sql);
			ps.setString(1,beneficiary_short_name);
			ps.setString(2,beneficiary_name);
			ps.setString(3,account_no);
			ps.setString(4,ifsc_code);
			ps.setString(5,bank_name);
			ps.setString(6,branch_name);
			int result=ps.executeUpdate();
			if(result>0)
			{

				out.println("<html><body>");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Beneficiary Added Successfully');");
				out.println("</script>");
				request.setAttribute("beneficiary_short_name", beneficiary_short_name);
				request.setAttribute("beneficiary_name", beneficiary_name);
				request.setAttribute("account_no",account_no);
				request.setAttribute("ifsc_code",ifsc_code);
				request.setAttribute("bank_name", bank_name);
				request.setAttribute("branch_name",branch_name);

			  request.getRequestDispatcher("idaccount.jsp").include(request,response);
			}
			else
			{
				request.getRequestDispatcher("Add_beneficiary.jsp").include(request,response);
			}
			
			
	
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
	}
	
		
	}

