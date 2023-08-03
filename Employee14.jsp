<html>
<body>
<%@ page language="java" import="java.sql.*"%>
<%
String b11=request.getParameter("b1");

if(b11.equals("Add Employee"))
{
try
{
Connection con=null;
Statement st=null;

int Eid=Integer.parseInt(request.getParameter("eid"));
String Ename=request.getParameter("ename"); //html
String Dname=request.getParameter("dname"); //html
int Dno=Integer.parseInt(request.getParameter("dno"));
String Company=request.getParameter("company"); //html
int Salary=Integer.parseInt(request.getParameter("salary"));

//1
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

//2
con=DriverManager.getConnection("jdbc:odbc:Employee2");

//3
st=con.createStatement();

//4
String s="insert into Employee1 values("+Eid+",'"+Ename+"','"+Dname+"',"+Dno+",'"+Company+"',"+Salary+")";

boolean x=st.execute(s);
out.println("<h3>");
out.println("Record is Inserted into table Employee Successfully!");
out.println("</h3>");
st.close();
con.close();
}//try close

catch(Exception e)
{
}
}//if
else if(b11.equals("Update Employee"))
{

try
{
Connection con=null;
Statement st=null;

int Eid=Integer.parseInt(request.getParameter("eid"));
String Ename=request.getParameter("ename"); //html
String Dname=request.getParameter("dname"); //html
int Dno=Integer.parseInt(request.getParameter("dno"));
String Company=request.getParameter("company"); //html
int Salary=Integer.parseInt(request.getParameter("salary"));

//1
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

//2
con=DriverManager.getConnection("jdbc:odbc:Employee2");

//3
st=con.createStatement();

//4
String s="update Employee1 set ename='"+Ename+"',dname='"+Dname+"',dno="+Dno+",company='"+Company+"',salary="+Salary+" where eid="+Eid+"";

boolean x=st.execute(s);
out.println("<h3>");
out.println("Record is Updated into table Employee Successfully!");
out.println("</h3>");
st.close();
con.close();
}//try close

catch(Exception e)
{
}
}//if
else if(b11.equals("Remove Employee"))
{

try
{
Connection con=null;
Statement st=null;

int Eid=Integer.parseInt(request.getParameter("eid"));


//1
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

//2
con=DriverManager.getConnection("jdbc:odbc:Employee2");

//3
st=con.createStatement();

//4
String s="delete from Employee1 where eid="+Eid+"";

boolean x=st.execute(s);
out.println("<h3>");
out.println("Record is Remove for table Employee Successfully!");
out.println("</h3>");
st.close();
con.close();
}//try close

catch(Exception e)
{
}
}//if
else if(b11.equals("Display All Employee"))
{

try
{
Connection con=null;
Statement st=null;

//int Eid=Integer.parseInt(request.getParameter("eid"));

//1
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

//2
con=DriverManager.getConnection("jdbc:odbc:Employee2");

//3
st=con.createStatement();

//4
String s="Select * from Employee1";

ResultSet rs=st.executeQuery(s);
out.println("<html><body><center><table border=\"1\" bgcolor=\"yellow\">");
out.println("<tr><td>"+"Eid"+"</td><td>"+"Ename"+"</td><td>"+"Dept"+"</td><td>"+"Dno"+"</td><td>"+"Company"+"</td><td>"+"Salary"+"</td></tr>");

while(rs.next())
{
int eid=rs.getInt(1);
String ename=rs.getString(2);
String dname=rs.getString(3);
int dno=rs.getInt(4);
String company=rs.getString(5);
int salary=rs.getInt(6);

out.println("<tr><td>"+eid+"</td><td>"+ename+"</td><td>"+dname+"</td><td>"+dno+"</td><td>"+company+"</td><td>"+salary+"</td></tr>");
out.println("</table></center></body></html>");
st.close();
con.close();
}
}//try close

catch(Exception e)
{
}
}//if
else if(b11.equals("Search Employee"))
{

try
{
Connection con=null;
Statement st=null;

int Eid=Integer.parseInt(request.getParameter("eid"));

//1
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

//2
con=DriverManager.getConnection("jdbc:odbc:Employee2");

//3
st=con.createStatement();

//4
String s="Select * from Employee1 where eid="+Eid+"";

ResultSet rs=st.executeQuery(s);
out.println("<html><body><center><table border=\"1\" bgcolor=\"yellow\">");
out.println("<tr><td>"+"Eid"+"</td><td>"+"Ename"+"</td><td>"+"Dept"+"</td><td>"+"Dno"+"</td><td>"+"Company"+"</td><td>"+"Salary"+"</td></tr>");

while(rs.next())
{
int eid=rs.getInt(1);
String ename=rs.getString(2);
String dname=rs.getString(3);
int dno=rs.getInt(4);
String company=rs.getString(5);
int salary=rs.getInt(6);
out.println("<tr><td>"+eid+"</td><td>"+ename+"</td><td>"+dname+"</td><td>"+dno+"</td><td>"+company+"</td><td>"+salary+"</td></tr>");
out.println("</table></center></body></html>");
st.close();
con.close();
}
}//try close

catch(Exception e)
{
}
}//if

%>
</body>
</html>





