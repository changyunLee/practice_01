/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.48
 * Generated at: 2021-10-05 01:45:16 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class joinus2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\" />\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\r\n");
      out.write("<meta name=\"viewport\"\r\n");
      out.write("	content=\"width=device-width, initial-scale=1, shrink-to-fit=no\" />\r\n");
      out.write("<meta name=\"description\" content=\"\" />\r\n");
      out.write("<meta name=\"author\" content=\"\" />\r\n");
      out.write("<title>Register - SB Admin</title>\r\n");
      out.write("<link href=\"/resources/css/styles.css\" rel=\"stylesheet\" />\r\n");
      out.write("<script\r\n");
      out.write("	src=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js\"\r\n");
      out.write("	crossorigin=\"anonymous\"></script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("	src=\"https://code.jquery.com/jquery-3.6.0.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("	$(document).ready(function() {\r\n");
      out.write("		//취소\r\n");
      out.write("		$(\"#cancle\").on(\"click\", function() {\r\n");
      out.write("\r\n");
      out.write("			location.href = \"/\";\r\n");
      out.write("		})\r\n");
      out.write("\r\n");
      out.write("		$(\"#submit\").on(\"click\", function() {\r\n");
      out.write("			if ($(\"#userid\").val() == \"\") {\r\n");
      out.write("				alert(\"아이디를 입력 해주세요\");\r\n");
      out.write("				$(\"#userid\").focus();\r\n");
      out.write("				return false;\r\n");
      out.write("			}\r\n");
      out.write("			if ($(\"#userpass\").val() == \"\") {\r\n");
      out.write("				alert(\"비밀번호를 입력 해주세요\");\r\n");
      out.write("				$(\"#userpass\").focus();\r\n");
      out.write("				return false;\r\n");
      out.write("			}\r\n");
      out.write("			if ($(\"#username\").val() == \"\") {\r\n");
      out.write("				alert(\"이름을 입력 해주세요\");\r\n");
      out.write("				$(\"#username\").focus();\r\n");
      out.write("				return false;\r\n");
      out.write("			}\r\n");
      out.write("\r\n");
      out.write("		});\r\n");
      out.write("	})\r\n");
      out.write("\r\n");
      out.write("	function joinus() {\r\n");
      out.write("\r\n");
      out.write("		$.ajax({\r\n");
      out.write("			url : \"joinusJ.do\",\r\n");
      out.write("			method : \"POST\",\r\n");
      out.write("			data : $(\"#joinus\").serialize(),\r\n");
      out.write("			dataType : \"JSON\",\r\n");
      out.write("			success : function(result) {\r\n");
      out.write("				console.log(result);\r\n");
      out.write("				alert(\"성공 했다\");\r\n");
      out.write("				location.href = \"/\"\r\n");
      out.write("			}\r\n");
      out.write("\r\n");
      out.write("		})\r\n");
      out.write("\r\n");
      out.write("	}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body class=\"bg-primary\">\r\n");
      out.write("	<div id=\"layoutAuthentication\">\r\n");
      out.write("		<div id=\"layoutAuthentication_content\">\r\n");
      out.write("			<main>\r\n");
      out.write("				<div class=\"container\">\r\n");
      out.write("					<div class=\"row justify-content-center\">\r\n");
      out.write("						<div class=\"col-lg-7\">\r\n");
      out.write("							<div class=\"card shadow-lg border-0 rounded-lg mt-5\">\r\n");
      out.write("								<div class=\"card-header\">\r\n");
      out.write("									<h3 class=\"text-center font-weight-light my-4\">Create\r\n");
      out.write("										Account</h3>\r\n");
      out.write("								</div>\r\n");
      out.write("								<div class=\"card-body\">\r\n");
      out.write("									<form id=\"joinus\">\r\n");
      out.write("										<div class=\"row mb-3\">\r\n");
      out.write("											<div class=\"col-md-6\">\r\n");
      out.write("												<div class=\"form-floating mb-3 mb-md-0\">\r\n");
      out.write("													<input class=\"form-control\" type=\"text\" name=\"userid\" id=\"userid\"\r\n");
      out.write("														placeholder=\"Enter your first name\" /> <label>ID</label>\r\n");
      out.write("												</div>\r\n");
      out.write("											</div>\r\n");
      out.write("										</div>\r\n");
      out.write("										<div class=\"form-floating mb-3\">\r\n");
      out.write("											<input class=\"form-control\" type=\"text\" name=\"username\" id=\"username\"\r\n");
      out.write("												placeholder=\"name@example.com\" /> <label>NAME</label>\r\n");
      out.write("										</div>\r\n");
      out.write("										<div class=\"row mb-3\">\r\n");
      out.write("											<div class=\"col-md-6\">\r\n");
      out.write("												<div class=\"form-floating mb-3 mb-md-0\">\r\n");
      out.write("													<input class=\"form-control\" name=\"userpass\" type=\"password\" id=\"userpass\"\r\n");
      out.write("													placeholder=\"Create a password\" />\r\n");
      out.write("													<label>Password</label>\r\n");
      out.write("												</div>\r\n");
      out.write("											</div>\r\n");
      out.write("										</div>\r\n");
      out.write("\r\n");
      out.write("									</form>\r\n");
      out.write("									<div class=\"mt-4 mb-0\">\r\n");
      out.write("										<div class=\"d-grid\">\r\n");
      out.write("											<button type=\"button\" id=\"submit\" onclick=\"joinus()\">계정\r\n");
      out.write("												생성</button>\r\n");
      out.write("										</div>\r\n");
      out.write("									</div>\r\n");
      out.write("								</div>\r\n");
      out.write("								<div class=\"card-footer text-center py-3\">\r\n");
      out.write("									<div class=\"small\">\r\n");
      out.write("										<a href=\"login.do\">계정이 있으신가요? 로그인 하러 가기</a>\r\n");
      out.write("									</div>\r\n");
      out.write("								</div>\r\n");
      out.write("							</div>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</main>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("	<script\r\n");
      out.write("		src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js\"\r\n");
      out.write("		crossorigin=\"anonymous\"></script>\r\n");
      out.write("	<script src=\"js/scripts.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
