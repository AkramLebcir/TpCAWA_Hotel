package org.apache.jsp.WEB_002dINF;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AjoutCli_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("       <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script type=\"text/javascript\" src=\"fn.js\"></script>\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"/Tpprojet/css/minimal.css\" />\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("           <div class=\"container\">\n");
      out.write("\n");
      out.write("    <form class=\"well form-horizontal\" action=\" \" method=\"post\"  id=\"contact_form\">\n");
      out.write("<fieldset>\n");
      out.write("\n");
      out.write("<!-- Form Name -->\n");
      out.write("<legend><center><h2><b>Registration Form</b></h2></center></legend><br>\n");
      out.write("\n");
      out.write("<!-- Text input-->\n");
      out.write("\n");
      out.write("<div class=\"form-group\">\n");
      out.write("  <label class=\"col-md-4 control-label\">First Name</label>  \n");
      out.write("  <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("  <div class=\"input-group\">\n");
      out.write("  <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-user\"></i></span>\n");
      out.write("  <input  name=\"first_name\" placeholder=\"First Name\" class=\"form-control\"  type=\"text\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- Text input-->\n");
      out.write("\n");
      out.write("<div class=\"form-group\">\n");
      out.write("  <label class=\"col-md-4 control-label\" >Last Name</label> \n");
      out.write("    <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("    <div class=\"input-group\">\n");
      out.write("  <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-user\"></i></span>\n");
      out.write("  <input name=\"last_name\" placeholder=\"Last Name\" class=\"form-control\"  type=\"text\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("  <div class=\"form-group\"> \n");
      out.write("  <label class=\"col-md-4 control-label\">Department / Office</label>\n");
      out.write("    <div class=\"col-md-4 selectContainer\">\n");
      out.write("    <div class=\"input-group\">\n");
      out.write("        <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-list\"></i></span>\n");
      out.write("    <select name=\"department\" class=\"form-control selectpicker\">\n");
      out.write("      <option value=\"\">Select your Department/Office</option>\n");
      out.write("      <option>Department of Engineering</option>\n");
      out.write("      <option>Department of Agriculture</option>\n");
      out.write("      <option >Accounting Office</option>\n");
      out.write("      <option >Tresurer's Office</option>\n");
      out.write("      <option >MPDC</option>\n");
      out.write("      <option >MCTC</option>\n");
      out.write("      <option >MCR</option>\n");
      out.write("      <option >Mayor's Office</option>\n");
      out.write("      <option >Tourism Office</option>\n");
      out.write("    </select>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("  \n");
      out.write("<!-- Text input-->\n");
      out.write("\n");
      out.write("<div class=\"form-group\">\n");
      out.write("  <label class=\"col-md-4 control-label\">Username</label>  \n");
      out.write("  <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("  <div class=\"input-group\">\n");
      out.write("  <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-user\"></i></span>\n");
      out.write("  <input  name=\"user_name\" placeholder=\"Username\" class=\"form-control\"  type=\"text\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- Text input-->\n");
      out.write("\n");
      out.write("<div class=\"form-group\">\n");
      out.write("  <label class=\"col-md-4 control-label\" >Password</label> \n");
      out.write("    <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("    <div class=\"input-group\">\n");
      out.write("  <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-user\"></i></span>\n");
      out.write("  <input name=\"user_password\" placeholder=\"Password\" class=\"form-control\"  type=\"password\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- Text input-->\n");
      out.write("\n");
      out.write("<div class=\"form-group\">\n");
      out.write("  <label class=\"col-md-4 control-label\" >Confirm Password</label> \n");
      out.write("    <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("    <div class=\"input-group\">\n");
      out.write("  <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-user\"></i></span>\n");
      out.write("  <input name=\"confirm_password\" placeholder=\"Confirm Password\" class=\"form-control\"  type=\"password\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- Text input-->\n");
      out.write("       <div class=\"form-group\">\n");
      out.write("  <label class=\"col-md-4 control-label\">E-Mail</label>  \n");
      out.write("    <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("    <div class=\"input-group\">\n");
      out.write("        <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-envelope\"></i></span>\n");
      out.write("  <input name=\"email\" placeholder=\"E-Mail Address\" class=\"form-control\"  type=\"text\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Text input-->\n");
      out.write("       \n");
      out.write("<div class=\"form-group\">\n");
      out.write("  <label class=\"col-md-4 control-label\">Contact No.</label>  \n");
      out.write("    <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("    <div class=\"input-group\">\n");
      out.write("        <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-earphone\"></i></span>\n");
      out.write("  <input name=\"contact_no\" placeholder=\"(639)\" class=\"form-control\" type=\"text\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
