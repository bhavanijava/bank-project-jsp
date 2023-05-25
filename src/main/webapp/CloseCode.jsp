<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"  %>
    <% 
    String accountnumber= request.getParameter("ano");
    String name=request.getParameter("uname");
    String password=request.getParameter("psw");
    

	String status ="Inactive";
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bdb","bdb");
	PreparedStatement ps = con.prepareStatement("update bank1 set status = ? where accountnumber = ? and name = ? and password = ?");
	ps.setString(1,status);
	
	ps.setString(2,accountnumber);
	ps.setString(3,name);
	ps.setString(4,password);
	int i = ps.executeUpdate();
	if(i>=1)
	{
		out.print("</h2><br><h1 id = 'info'> Account Info </h1>");
		out.print("</h2><br><p> Account is Inactive</p>");
	}
	con.close();
}
catch(Exception e)
{
	out.print(e);
}
%>