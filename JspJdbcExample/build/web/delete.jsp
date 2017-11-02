<%@page import="com.itn.jspjdbcexample.dao.Impl.CourseDaoImpl"%>
<%@page import="com.itn.jspjdbcexample.dao.Impl.CourseDao"%>
<% 

int courseId = Integer.parseInt(request.getParameter("id"));
CourseDao coursedao = new CourseDaoImpl();
coursedao.delete(courseId);
response.sendRedirect("index.jsp?success");


%>