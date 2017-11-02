<%@page import="com.itn.jspjdbcexample.entity.Course"%>
<%@page import="com.itn.jspjdbcexample.dao.Impl.CourseDaoImpl"%>
<%@page import="com.itn.jspjdbcexample.dao.Impl.CourseDao"%>
<% 
out.println(request.getParameter("id"));
int courseId = Integer.parseInt(request.getParameter("id"));

CourseDao coursedao = new CourseDaoImpl();
    Course c = coursedao.getById(courseId);
    
    c.setName(request.getParameter("cName"));
    c.setDuration(request.getParameter("cDuration"));
    c.setInstructorName(request.getParameter("cInstructor"));
    coursedao.update(c);
    response.sendRedirect("index.jsp?success");
    


%>