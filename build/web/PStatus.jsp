<%-- 
    Document   : PStatus
    Created on : Nov 13, 2016, 11:46:15 PM
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
            <header><h2>Status of your ride from the request made</h2></header>
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
       s1=request.getParameter("t2");
       sql="select * from confirm where PName='"+s1+"'";
         rs=st.executeQuery(sql);
         %>
         <article>
             <form name="f1">
             <table>
                 <th>Rider-Name</th>
                 <th>Requested person</th>
                 <th>Reference Index</th>
                 
              
                 <%
                 if(rs.next())
             
                 {
                     %>
                      
                        <tr>
                            <td><a href='DDetails.jsp'><input type="text" name="t1" value="<%=rs.getString(1)%>" readonly></a></td>
                            <td><input type="text" name="t2" value="<%=rs.getString(2)%>"readonly ></td>
                            <td><input type="text" name="t3" value="<%=rs.getInt(3)%>"readonly></td>
                            </tr>
                           
  
                       <%
                       }
else
{
%>
<script>
    alert("Rides are not yet confirmed for you Please check back later");
    window.location="Passenger.html";
    
</script>

<%
}

%>
</table>
<br>
<br>
<br> <br>
Your ride has been confirmed<br><br>
<b><%= new java.util.Date()%></b><br>
<br>
Meet your rider up at the University student's parking area behind the library.<br>
You can contact your new friend via e-mail or through cell-Phone.Get his/her contact details from rider's list<br>
Hurry up !!<br><br>
Enjoy the ride<br>

<input type="button" name="b3" value="Home" onclick="back()"/>
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

