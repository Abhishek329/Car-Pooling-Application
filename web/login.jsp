<%-- 
    Document   : login
    Created on : Nov 2, 2016, 9:33:19 PM
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
        ResultSet rs ;
        Statement st;
        String s1,s2,ty,sql;
    
        %>
        
        
        <%
             try {
                                  
        Class.forName("com.mysql.jdbc.Driver");
       con1=DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
       st=con1.createStatement();
       s1=request.getParameter("t1");
       s2=request.getParameter("t2");
       ty=request.getParameter("ty");
       %>
       
       
       <%
       if(ty.equals("Driver"))
       {
           sql="select DName,Password from driver where DName='"+s1+"' and Password='"+s2+"'";
           rs=st.executeQuery(sql);
           if(rs.next())
           {
               %>
               <script>
                   alert("Welcome ");
                   window.location="driver.html";
                   
               </script>
               <%
                   }
else
{
               %>
               <script>
                   alert("invalid Credentials");
                   window.location="Login.html";
               </script>
               <%
                   
                   
           }
       }

                if(ty.equals("Passenger"))
                   {
                       sql="Select PName,Password from passenger where PName='"+s1+"' and  Password='"+s2+"'";
                       rs=st.executeQuery(sql);
                     if(rs.next())
                     {
                      %>
                      <script>
                          alert("Welcome ");
                          window.location="Passenger.html";
                          
                      </script>

               <%
}
else
{
%>
<script>
    alert("Invalid");
    window.location="Login.html";
    
</script>
<%
                    }
      
             }
}



             
 catch(Exception e)
               {
           out.println(e.toString());
       }
         %>
                
                
            
    </body>
</html>

