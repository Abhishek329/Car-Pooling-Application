<%-- 
    Document   : DDetails
    Created on : Nov 14, 2016, 12:28:28 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>

<html>
    <head>
        <script>
            
            function back()
            {
                window.location="Passenger.html";
            }
                       
            </script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
        Connection con1;
        ResultSet rs,rs1;
        Statement st;
        int a1,a2;
        String s1,s2,sql,sql1;
      
        %>
        
        <%
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
       con1=DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
       st=con1.createStatement();
       s1=request.getParameter("t1");
      // s2=request.getParameter("t2");
           
      
            sql="select * from driver";
            rs=st.executeQuery(sql); 
                                         
         %>
         <center>
             <table>
                 <th>Name</th>
                 <th>Student ID</th>
                 <th>Email</th>
                 <th>Address</th>
                 <th>Time</th>
                 <th>Route no</th>
              <form name="f1">
                 <%
                  while(rs.next())
             
                 {
                     %>
                      
                        <tr>
                            <td><input type="text" name="t1" value="<%=rs.getString(1)%>" readonly></td>
                            <td><input type="text" name="t2" value="<%=rs.getInt(2)%>"readonly ></td>
                            <td><input type="text" name="t4" value="<%=rs.getString(4)%>"readonly ></td>
                            <td><input type="text" name="t5" value="<%=rs.getString(5)%>"readonly ></td>
                            <td><input type="text" name="t6" value="<%=rs.getString(6)%>"readonly ></td>
                            <td><input type="text" name="t7" value="<%=rs.getInt(7)%>"readonly ></td>
                           </tr>
                        
                       
                       <%
                       }
%>             
   </table>
   
   <input type="button" name="b2" value="Back" onclick="back()"/>
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
    </body>
</html>
