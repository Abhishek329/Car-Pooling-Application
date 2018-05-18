<%-- 
    Document   : delete
    Created on : Nov 29, 2016, 1:15:56 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%@ page import="java.sql.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%!
        Connection con1,con2;
        ResultSet rs,rs2 ;
        Statement st,st1;
        int a1;
        String s1,sql,sql1;
      
        %>
        <%
        try{
        Class.forName("com.mysql.jdbc.Driver");
       con1=DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
       st=con1.createStatement();
       s1=request.getParameter("r1");
       a1=Integer.parseInt(s1);
       sql="delete from confirm where Serial="+a1+"";
       st.executeUpdate(sql);
       %>
       <script>
           window.location="driver.html";
           
       </script>
       
       
      <%
       con2=DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
       st1=con2.createStatement();
       sql1="delete from request where Serial="+a1+"";
       st1.executeUpdate(sql1);
       
       
       
       }
     catch(Exception e)
               {
           out.println(e.toString());
       } 
        %>
    </body>
</html>