package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


        Connection con1;
        ResultSet rs ;
        Statement st;
        String s1,s2,ty,sql;
    
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");

             try {
                                  
        Class.forName("com.mysql.jdbc.Driver");
       con1=DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
       st=con1.createStatement();
       s1=request.getParameter("t1");
       s2=request.getParameter("t2");
       ty=request.getParameter("ty");
       
      out.write("\n");
      out.write("       \n");
      out.write("       \n");
      out.write("       ");

       if(ty.equals("Driver"))
       {
           sql="select DName,Password from driver where DName='"+s1+"' and Password='"+s2+"'";
           rs=st.executeQuery(sql);
           if(rs.next())
           {
               
      out.write("\n");
      out.write("               <script>\n");
      out.write("                   alert(\"Welcome \");\n");
      out.write("                   window.location=\"driver.html\";\n");
      out.write("                   \n");
      out.write("               </script>\n");
      out.write("               ");

                   }
else
{
               
      out.write("\n");
      out.write("               <script>\n");
      out.write("                   alert(\"invalid Credentials\");\n");
      out.write("                   window.location=\"Login.html\";\n");
      out.write("               </script>\n");
      out.write("               ");

                   
                   
           }
       }

                if(ty.equals("Passenger"))
                   {
                       sql="Select PName,Password from passenger where PName='"+s1+"' and  Password='"+s2+"'";
                       rs=st.executeQuery(sql);
                     if(rs.next())
                     {
                      
      out.write("\n");
      out.write("                      <script>\n");
      out.write("                          alert(\"Welcome \");\n");
      out.write("                          window.location=\"Passenger.html\";\n");
      out.write("                          \n");
      out.write("                      </script>\n");
      out.write("\n");
      out.write("               ");

}
else
{

      out.write("\n");
      out.write("<script>\n");
      out.write("    alert(\"Invalid\");\n");
      out.write("    window.location=\"Login.html\";\n");
      out.write("    \n");
      out.write("</script>\n");

                    }
      
             }
}



             
 catch(Exception e)
               {
           out.println(e.toString());
       }
         
      out.write("\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
