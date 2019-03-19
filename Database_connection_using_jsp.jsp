<--This is Dhirajlal Vishwakarma please checkout these program.-->

<--index.jsp-->

  <!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>JSP Page</title>
 </head>
 <body>
 <form method="post" action="empDB.jsp">
 ID:<input type="text" name="eid"><br>
 Name:<input type="text" name="ename"><br>
 AGE:<input type="text" name="eage"><br>
 <input type="submit">
 </form>
 </body>
</html>
  
  
  
  <--empDB.jsp-->
    
    <%@page import="java.sql.*"%>
<%
String seid = request.getParameter("eid");
String sename = request.getParameter("ename");
int seage = Integer.parseInt(request.getParameter("eage"));

try {

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Stud","root","root@123");

 PreparedStatement pst = con.prepareStatement("insert into stud values(?,?,?)");
 pst.setString(1, seid);
 pst.setString(2, sename);
 pst.setInt(3, seage);

 pst.executeUpdate();

 } 
catch(Exception e) {
    out.close();
    }
%>
