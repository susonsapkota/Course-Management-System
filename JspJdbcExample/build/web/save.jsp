<%@page import="com.itn.jspjdbcexample.entity.Course"%>
<%@page import="com.itn.jspjdbcexample.dao.Impl.CourseDaoImpl"%>
<%@page import="com.itn.jspjdbcexample.dao.Impl.CourseDao"%>
<% 
    if(request.getMethod().equalsIgnoreCase("POST")){

        CourseDao coursedao = new CourseDaoImpl();
    Course c = new Course();
    c.setName(request.getParameter("cName"));
    c.setDuration(request.getParameter("cDuration"));
    c.setInstructorName(request.getParameter("cInstructor"));
    coursedao.insert(c);
    response.sendRedirect("index.jsp?success");
    

}else {
    response.sendRedirect("index.jsp?error");
} 
%>