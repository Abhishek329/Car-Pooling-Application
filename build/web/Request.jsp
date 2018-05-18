<%-- 
    Document   : Request
    Created on : Nov 5, 2016, 1:05:09 AM
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
        Connection con1;
        ResultSet rs,rs1;
        Statement st,st1;
        int a1,a2;
        String s1,s2,s3,sql,sql1;
      
        %>
        
        <%
        try{
        Class.forName("com.mysql.jdbc.Driver");
       con1=DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
       st=con1.createStatement();
       s1=request.getParameter("t8");
       s2=request.getParameter("t9");
       //s3=request.getParameter("t7");
       //a1=Integer.parseInt(s3);
       
                           
       sql="insert into request(DName,PName) values('"+s1+"','"+s2+"')";
         st.executeUpdate(sql);
         %>
         <script>
        alert("Request sent successfully");
        window.location="Passenger.html";
                        
                          
         </script>      
        <%
         }
  
        catch(Exception e)
               {
           out.println(e.toString());
       }
                 
 %>     
    </body>
</html>
