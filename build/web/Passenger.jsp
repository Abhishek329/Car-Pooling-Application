<%-- 
    Document   : Passenger
    Created on : Nov 14, 2016, 6:38:04 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <script>
            var x1,x2,x3;
            x1=f1.t1.value;
            
            function display1()
            {
               if (f1.t1.value =="")
               {
                   alert("Please enter the specified route");
                   window.location="Passenger.html";
               }
               else
               
           if(f1.t1.value>12 )
             {
               alert("Routes are from 1 to 12, Please enter the route between 1 to 12");
               window.location="Passenger.html";
            }
           else
               
           if(f1.t1.value < 1)
       {
           alert("Routes are from 1 to 12, Please enter the route between 1 to 12");
           window.location="Passenger.html";
       }
        else    
        { 
                   f1.action="Display1.jsp";
                   f1.submit();
               }                            
            }
            
           function display()
           {
               f1.action="Display.jsp";
               f1.submit();
            }
            
            function getStatus()
            {
                var x2=f1.t2.value;
                if(x2=="")
                {
                    alert("Please enter your Login name to get the status");
                    window.location="Passenger.html";
                }
                else
                    f1.action="PStatus.jsp";
                    f1.submit();
            }
           
           function back()
           {
               window.location="Login.html";
           }
            </script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
        Connection con1;
        ResultSet rs ;
        Statement st;
        int a1;
        String s1,sql;
      
        %>
        
        <%
        try{
        Class.forName("com.mysql.jdbc.Driver");
       con1=DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
       st=con1.createStatement();
       s1=request.getParameter("t1");
       %>
       <center>
        <h1>Welcome buddy</h1>
        <form name="f1">
        <table>
            <tr><td>See the rides of every route<button onclick="display()">Rider's details</button></td></tr>
            <tr><td>Check for specific routes<td></tr>
            <tr><td>Enter the route no<input type="text" name="t1" value="">Routes are from 1 to 12</td></tr>
            <tr><td><button onclick="display1()">Check</button></td></tr>
            
                       
        </table>
            Enter your Login-name and check for the status of your ride<input type="text" name="t2" value=""/><button onclick="getStatus()">Get Status</button><br><br>
        <input type="button"  name="b1" value="Log-out" onclick="back()"/>
            </form>
    </center>
       
    
    <%
}
 catch(Exception e)
               {
           out.println(e.toString());
       }
                 
           
           
           
           
           %>
    </body>
    
</html>
