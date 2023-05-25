<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*"%>
<%
String AccountNumber=request.getParameter("ano");
String Name=request.getParameter("uname");
String Password=request.getParameter("psw");
double amnt=Double.parseDouble(request.getParameter("amt"));
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bdb","bdb");
	PreparedStatement ps=con.prepareStatement("select * from bank1 where AccountNumber=? and Name=? and Password=?");
	ps.setString(1,AccountNumber);
	ps.setString(2,Name);
	ps.setString(3,Password);
	ResultSet rs=ps.executeQuery();
	ResultSetMetaData rss=rs.getMetaData();
	if(rs.next())
			{
		double a=rs.getDouble(4);
		double amount=a+amnt;
		out.println("Balance Has Been Increase with "+amnt+"<br>"+"and Current Balance is"+amount+"<br>");
		PreparedStatement psr=con.prepareStatement("Update bank1 set amount=? where AccountNumber=?");
		psr.setDouble(1,amount);
		psr.setString(2,AccountNumber);
		int i=psr.executeUpdate();
		if(i>=1)
		{
			out.println("Amount Deposit Successfully");
		}
		else
		{
			out.println("DepositS Fail");
			
		}
	}
	
}
catch(Exception ex)
{
	out.print(ex);
}
%>