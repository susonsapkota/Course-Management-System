<%-- 
    Document   : index
    Created on : Oct 29, 2017, 8:48:37 PM
    Author     : Dell
--%>

<%@page import="com.itn.jspjdbcexample.entity.Course"%>
<%@page import="com.itn.jspjdbcexample.dao.Impl.CourseDaoImpl"%>
<%@page import="com.itn.jspjdbcexample.dao.Impl.CourseDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous"> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee</title>
    </head>
    <body>
        <div class="container">
        <h1>Courses</h1>
        <p>
        <div class="pull-right">
         
           <a href="form.jsp" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-plus"></span> Plus 
        </a>
            
            
        </div>  
        </p>
        <table class="table table-striped table-hover">
                
                <tr>
                    <th>Course ID</th>
                    <th>Course Name</th>
                    <th>Duration</th>
                    <th>Instructor Name</th>
                    <th>Action</th>
                </tr>
                <%
        
           CourseDao courseDao = new CourseDaoImpl();
           for(Course c:courseDao.getAll()){
            %>
                <tr>
                    <td> <%=c.getId()%> </td>
                    <td> <%=c.getName()%> </td>
                    <td> <%=c.getDuration()%> </td>
                    <td> <%=c.getInstructorName()%> </td>
                    <td> <a href="editform.jsp?id=<%=c.getId()%>" class="btn btn-success" >Edit</a>
                        <a href="delete.jsp?id=<%=c.getId()%>"class="btn btn-danger">Delete</a> </td>
                </tr>
                    
           
           
        

         
                    <% 
                    }
                    %>
                    </table>
        </div>
    </body>
</html>
