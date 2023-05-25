<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"  %>
<%
String accountnumber=request.getParameter("ano");
String name=request.getParameter("uname");
String password=request.getParameter("psw");



try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bdb","bdb");
	PreparedStatement ps=con.prepareStatement("select * from bank1 where  accountnumber=?  and password=?"   );
	ps.setString(1,accountnumber);
	
	ps.setString(2,password);
	ResultSet rs=ps.executeQuery();
	
	if(rs.next())
	{
		{		
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bdb","bdb");
			PreparedStatement psr=con1.prepareStatement("select * from bank1 where  accountnumber=? and name=? and password=? "   );
			psr.setString(1,accountnumber);
			psr.setString(2,name);
			psr.setString(3,password);
			ResultSet rs1=psr.executeQuery();
			
			ResultSetMetaData rss=rs1.getMetaData();
		
		
			int n=rss.getColumnCount();
			out.print("<html><body>");
			out.print("<table border='2'>");
			for(int i=1;i<=n;i++)
				out.println("<td><font color=blue size=3>"+"<br>"+rss.getColumnName(i));
			out.println("<tr>");
			while(rs1.next())
			{
				for(int i=1;i<=n;i++)
					out.println("<td><br>"+rs.getString(i));
				out.println("<tr>");
			}
			out.println("</table></body></html>");
			


		}	
			
		
	}
	else
	{
		out.println("Account is Inactive");
	}

con.close();
		
	
}
catch(Exception ex)
{
	out.print(ex);
	
}



%>