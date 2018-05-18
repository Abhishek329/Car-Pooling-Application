<%-- 
    Document   : RouteDetails
    Created on : Nov 30, 2016, 3:44:57 PM
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

img {
    border: 1px solid #ddd;
    border-radius: 4px;
    padding: 5px;
    float :left;
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
    width: 50%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
input[type='text']
{
width: 100px;
height: 10px;
border-radius: 3px;
border: 1px solid #CCC;
padding: 5px;
font-weight: 200;
font-size: 15px;
font-family: Verdana;
box-shadow: 1px 1px 5px #CCC;
}

input[type='text']:hover
{
width: 200px;
height: 29px;
border-radius: 3px;
border: 1px solid #aaa;
padding: 8px;
font-weight: 200;
font-size: 15px;
font-family: Verdana;
box-shadow: 1px 1px 5px #CCC;
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
outline:none;
}
</style>
        <script>
            function back()
            {
               window.location="Login.html";
              
            }
            
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
        
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
       sql="select * from routeinfo";
         rs=st.executeQuery(sql);
         %>
         <header>Routes information</header>
         <center>
             <table>
                 <th>Route_no</th>
                 <th>Details</th>
                 
              
                 <%
                 while(rs.next())
             
                 {
                     %>
                      <form name="f1">
                        <tr>
                            
                            <td><input type="text" name="" value="<%=rs.getInt(1)%>" ></td>
                            <td><input type="text" name="" value="<%=rs.getString(2)%>" ></td>
                            
                        </tr>
                           
                        
                       
                       <%
                       }
%> 
</table>
                        
                        </form>
<input type="button" name="b1" value="Home" onclick="back()"/>

         </center>
         <%
         }
  
        catch(Exception e)
               {
           out.println(e.toString());
       }
                 
 %> 
         <footer>Copyrights @ abhishek.policepatil@snhu.edu</footer>
        </div>
    </body>
</html>