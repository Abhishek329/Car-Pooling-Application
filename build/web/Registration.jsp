<%-- 
    Document   : Registration
    Created on : Nov 2, 2016, 10:10:38 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <style>

</style>
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
        Connection con1;
        ResultSet rs ;
        Statement st;
        String s1,sql;
    
        %>
        
        <h1>Registration Page </h1>
        
        <%
             try {
                                  
        Class.forName("com.mysql.jdbc.Driver");
       con1=DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
       st=con1.createStatement();
       //sql="select * from Employee";
        // rs=st.executeQuery(sql);
         System.out.println("Command received to database");
             }
             
 catch(Exception e)
               {
           out.println(e.toString());
       }
         %>
                
                
            
    </body>
</html>
