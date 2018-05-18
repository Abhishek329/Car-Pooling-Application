<%-- 
    Document   : DriverReg
    Created on : Nov 4, 2016, 12:46:53 AM
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
        <%
         Connection con1;
         ResultSet rs;
         Statement st;
         int a1,a2,a7;
         String s1,s2,s3,s4,s5,s6,s7,sql;
         try
                 {
                  Class.forName("com.mysql.jdbc.Driver");
                  con1=DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
                  st=con1.createStatement();
                  s1=request.getParameter("t1");
                  s2=request.getParameter("t2");
                  s3=request.getParameter("t3");
                  s4=request.getParameter("t4");
                  s5=request.getParameter("t5");
                  s6=request.getParameter("t6");
                  s7=request.getParameter("t7");
                  a2=Integer.parseInt(s2);
                  a7=Integer.parseInt(s7);
                  
                sql= "insert into driver values('"+s1+"',"+a2+",'"+s3+"','"+s4+"','"+s5+"','"+s6+"',"+a7+")";
                st.executeUpdate(sql);
                out.println("success");
                                        
                     
                 }
         catch(Exception e)
         {
            out.println(e.toString());
         }
         
             %>
    </body>
</html>
