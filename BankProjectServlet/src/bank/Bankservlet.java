package bank;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
@WebServlet("/Bankservlet")
public class Bankservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bankservlet() {
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
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		String address=request.getParameter("address");
		String idproof=request.getParameter("idproof");
		String idnumber=request.getParameter("idnumber");
		String mobilenumber=(request.getParameter("mobilenumber"));
		String mailid=request.getParameter("mailid");
		String branch_location=request.getParameter("branch_location");
		String userid1;
		String password1;
		String accountnumber1;

		String[] m1=((mobilenumber.split("")));
		String[] mob=new String[10];
		 StringBuilder mob1=new StringBuilder();
		 for(int i=0;i<10;i++)
		 {
		 	if((i%2)==0)
		 	{
		 		mob[i]=m1[i];
		 	}
		 }

		 for (String string : mob) {
		 	if(string!=null)
		 	mob1.append(string);
		 }

		 java.text.DateFormat sdf = new java.text.SimpleDateFormat(dob);
		 java.util.Date dob1 = new java.util.Date();
		 System.out.println(sdf.format(dob1));		
		 String s1=sdf.format(dob1);
		 String a1=s1.substring(0, 4);
		 StringBuffer sb= new StringBuffer(a1);
		 StringBuffer sb1=(sb.reverse());
		 int a=(int) ((Math.random()*9000000)+1000000);
		 String r2=Integer.toString(a);
		 String password=(firstname.substring((firstname.length()-2), firstname.length()))+lastname.substring(0,2)+(idnumber.substring(0, 2))+mob1+sb1;
		 String userid=(firstname.substring(0, 2))+(lastname.substring((lastname.length()-2), lastname.length()))+r2;
		 Long accountnumber=(long) a;
		 String account_balance=request.getParameter("account_balance");
		 
				try
				{
					PrintWriter out=response.getWriter();
					
					DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
					Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
					String sql="insert into hemaa.My_profiles values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
					PreparedStatement ps=c.prepareStatement(sql);
					ps.setLong(1, accountnumber);
					ps.setString(2, firstname);
					ps.setString(3, lastname);
					java.sql.Date d = java.sql.Date.valueOf(dob);
					ps.setDate(4, d);
					ps.setString(5, gender);
					ps.setString(6, address);
					ps.setString(7,idproof);
					ps.setString(8,idnumber);
					ps.setString(9,branch_location);
					ps.setString(10,mobilenumber);
					ps.setString(11,mailid);
					ps.setString(12,userid);
					ps.setString(13,password);
					ps.setLong(14,accountnumber);
					ps.setString(15,account_balance);
					int result=ps.executeUpdate();
					if(result>0)
					{

						out.println("<html><body>");
						out.println("<script type=\"text/javascript\">");
						out.println("alert('Successfully Created');");
						out.println("</script>");
				
				  String sql1="select *  from hemaa.my_profiles where idnumber=?";
				  PreparedStatement ps1=c.prepareStatement(sql1);
				  ps1.setString(1, idnumber);
				  ResultSet rs1=ps1.executeQuery();
				  if(rs1.next())
				  {
					   userid1=rs1.getString("userid");
					  System.out.println(rs1.getString("userid"));
					  System.out.println(userid1);
					   password1=rs1.getString("password");
					  accountnumber1=rs1.getString("accountnumber");
					  
					  request.setAttribute("userid",userid1);
					  request.setAttribute("accountnumber",accountnumber1);
					  request.setAttribute("password",password1);
					  System.out.println("success");
					  request.getRequestDispatcher("idaccount.jsp").include(request,response);
				  }
				}
					else
					{
						out.println("<html><body>");
						out.println("<script type=\"text/javascript\">");
						out.println("alert('Not created');");
						out.println("</script>");
					}
					
				}
				catch(SQLException e)
				{
					e.printStackTrace();
				}
				
			}
			
	}


