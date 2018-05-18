<%-- 
    Document   : Reqdisplay
    Created on : Nov 11, 2016, 12:16:31 AM
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
input[type='button'] {
   background-repeat:no-repeat;
background-position:100px;
width:100px;
padding:12px;
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
            function go()
            {
               var x1;
               x1=f1.r1.value;
               if(x1=="")
               {
                   alert("Please enter the desired reference number to confirm your ride");
                   window.location="driver.html";
                }
               else
               
                   
                alert("The ride has been confirmed");
                f1.action="Confirmation.jsp";
                f1.submit();
   
        }
        function deny()
        {
           var x1;
               x1=f1.r1.value;
               if(x1=="")
               {
                   alert("Please enter the reference number to deny the ride request");
                   window.location="driver.html";
                }
               else
               
                   
                alert("you have denied the request");
                f1.action="delete.jsp";
                f1.submit();
    
        }
           
    
            function back()
            {
               window.location="driver.html";
              
            }
            
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ReqDisp</title>
    </head>
    
    <body>
        <div calss="container">
    <header>
    People waiting for your ride confirmation
    </header>
            <nav>
                <a href='driver.html'><u>Home</u></a>
                
            </nav>
            <article>
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
       sql="select * from request where DName='"+s1+"'";
         rs=st.executeQuery(sql);
         %>
         
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
                            <td><input type="text" name="t1" value="<%=rs.getString(1)%>" readonly></td>
                            <td><input type="text" name="t2" value="<%=rs.getString(2)%>"readonly ></td>
                            <td><input type="text" name="t3" value="<%=rs.getInt(3)%>"readonly></td>
                            </tr>
                           
  
                       <%
                       }

else
{
%>
<script>
    alert("No ride requests rite now");
    window.location="driver.html";
    
    </script>
    <%
        }


%>
    
</table>
<br>
<br>
Enter the Reference index number to confirm or cancel your ride request<input type="text" name="r1" value=""/><br>
<input type="button" name="b1" value="Confirm" onclick="go()"/>
<input type="button" name="b2" value="Deny" onclick="deny()"/>


 </form>
            </article>
         
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
