<%-- 
    Document   : Confirmation
    Created on : Nov 11, 2016, 5:26:23 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
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
            function back()
            {
               window.location="driver.html";
              
            }
            
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <header>Ride confirmed</header>
    
       <%!
        Connection con1;
        ResultSet rs ;
        Statement st,st1,st2;
        int a1;
        String s1,sql,sql2,sql3;
      
        %>
        <article>
        
        <%
        try{
        Class.forName("com.mysql.jdbc.Driver");
       con1=DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
       st=con1.createStatement();
       s1=request.getParameter("r1");
       a1=Integer.parseInt(s1);
       sql="select * from request where Serial="+a1+"";
         rs=st.executeQuery(sql);
         %>
         
             <table>
                 <th>Rider-Name</th>
                 <th>Requestor-Name</th>
                 <th>Reference-ID</th>
                 <%
                 if(rs.next())
             
                 {
                     %>
                      <form name="f1">
                        <tr>
                            <td><input type="text" name="t1" value="<%=rs.getString(1)%>" readonly></td>
                            <td><input type="text" name="t2" value="<%=rs.getString(2)%>" ></td>
                            <td><input type="text" name="t4" value="<%=rs.getInt(3)%>" ></td>
                            </tr>
                           
                        
                       
                       <%
                       }

%> 
</table>
                        
                        </form>
<br>Please take your desired route.<br>
The confirmation has been done.<br> 
<b><%= new java.util.Date()%></b><br>
Meet your rider up at the University student's parking area behind the library.<br>
Enjoy the ride and make a new friend!!<br>

<input type="button" name="b1" value="Back" onclick="back()"/>

         
         <%
             st1=con1.createStatement();
             sql2="insert into confirm(DName,PName,Serial) select DName,PName,Serial from request where Serial="+a1+"";
             st1.executeUpdate(sql2);
             
             st2=con1.createStatement();
             sql3="delete from request where Serial="+a1+"";
             st2.executeUpdate(sql3);
             
            
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
