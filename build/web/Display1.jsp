<%-- 
    Document   : Display1
    Created on : Nov 4, 2016, 9:17:43 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>

<html>
    <head>
        <style>
div.container {
    width: 100%;
    border: 1px solid gray;
}

header, footer {
    padding: 1em;
    color: white;
    background-color: #429ef4;
    clear: left;
    text-align: center;
}


nav {
    float: left;
    max-width: 160px;
    margin: 0;
    padding: 1em;
}


article {
    margin-left: 170px;
    border-left: 1px solid gray;
    padding: 1em;
    overflow: hidden;
}
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 10%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
select {
background-repeat:no-repeat;
background-position:100px;
width:100px;
padding:10px;
margin-top:8px;
font-family:Cursive;
line-height:1;
border-radius:5px;
background-color:#429ef4;
font-size:15px;
-webkit-appearance:none;
box-shadow:inset 0 0 10px 0 rgba(0,0,0,0.6);
outline:none
}
select:hover {
color:#00ff7f
}
input[type='button'] {
background-repeat:no-repeat;
background-position:100px;
width:100px;
padding:10px;
margin-top:8px;
font-family:Cursive;
line-height:1;
border-radius:5px;
background-color:#429ef4;
font-size:15px;
-webkit-appearance:none;
box-shadow:inset 0 0 10px 0 rgba(0,0,0,0.6);
outline:none
}

input[type='button']:hover{

    color:#00ff7f;
    
}
input[type='text']
{
width: 100px;
height: 20px;
border-radius: 3px;
border: 1px solid #CCC;
padding: 8px;
font-weight: 200;
font-size: 15px;
font-family: Verdana;
box-shadow: 1px 1px 5px #CCC;
}
</style>
        <script>
            function send()
            {
             f1.action="Request.jsp";
             f1.submit();
            }
            
            function back()
            {
                window.location="Passenger.html";
            }
                       
            </script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
        <header><h2>Riders available in your chosen route</h2></header>
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
       a1=Integer.parseInt(s1);
       
            /* sql1="select count(*) from driver where Route_no="+a1+"";
            rs1=st.executeQuery(sql1);
           a2=rs1.getInt(1); */
           
                
            
            sql="select * from driver where Route_no="+a1+"";
            rs=st.executeQuery(sql); 
                                         
         %>
         <article>
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
   <input type ="text" name="t8" value="">Enter the rider name
   <input type="text" name="t9" value="">your login name
   <input type="button" name="b1" value="Ask a ride" onclick="send()"/>
   <input type="button" name="b2" value="Back" onclick="back()"/>
   </form>
        
         
         <%
         }

        catch(Exception e)
               {
           out.println(e.toString());
       }
                 
 %> 
  </article>
 <footer>Copyrights @ abhishek.policepatil@snhu.edu</footer>
 
        </div>
    </body>
</html>
    </body>
</html>
