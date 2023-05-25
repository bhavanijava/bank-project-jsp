<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<% 
    String accountnumber= request.getParameter("ano");
	String name= request.getParameter("uname");
	String password= request.getParameter("psw");
	double amount=Double.parseDouble(request.getParameter("amt"));
	String address= request.getParameter("add");
	String mobileno= request.getParameter("mno");
	String  status = "Active";
	try
	{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bdb", "bdb");
	PreparedStatement ps=con.prepareStatement("insert into bank1 values(?,?,?,?,?,?,?)");
	ps.setString(1,accountnumber);
	ps.setString(2,name);
	ps.setString(3,password);
	ps.setDouble(4,amount);
	ps.setString(5,address);
	ps.setString(6,mobileno);
	ps.setString(7,status);
	
	int i=ps.executeUpdate();
		if(i>=1)
		{
		response.sendRedirect("success.jsp");
		
		}
		else{
		out.print("Your Registeration not complete");
		}
		out.println("<h3>Hello " + name + " your Account is created...</h3>");
		out.println("<center><table width='280' height='100' style='border: 1px solid gray;border-collapse:collapse;' >");
		out.print(
		"<tr style='border: 1px solid gray;border-collapse:collapse;'><th style='border: 1px solid gray;border-collapse:collapse;'>ACCOUNT NO</th><th style='border: 1px solid gray;border-collapse:collapse;'>USERNAME</th><th style='border: 1px solid gray;border-collapse:collapse;'>PASSWORD</th><th style='border: 1px solid gray;border-collapse:collapse;'>AMOUNT</th><th style='border: 1px solid gray;border-collapse:collapse;'>ADDRESS</th><th style='border: 1px solid gray;border-collapse:collapse;'>PHONE</th></tr>");

		out.print("<tr style='border: 1px solid gray;border-collapse:collapse;'>");
		out.print("<td style='border: 1px solid gray;border-collapse:collapse;'>" + accountnumber + "</td>");
		out.print("<td style='border: 1px solid gray;border-collapse:collapse;'>" + name + "</td>");
		out.print("<td style='border: 1px solid gray;border-collapse:collapse;'>" + password + "</td>");
		out.print("<td style='border: 1px solid gray;border-collapse:collapse;'>" + amount + "</td>");
		out.print("<td style='border: 1px solid gray;border-collapse:collapse;'>" + address + "</td>");
		out.print("<td style='border: 1px solid gray;border-collapse:collapse;'>" + mobileno + "</td>");

		out.print("</tr>");
		out.println("</center></table>");
		con.close();	
		}
		catch(Exception e)
		{
		out.print(e);
		}
%>