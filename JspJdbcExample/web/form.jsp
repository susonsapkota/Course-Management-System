<%-- 
    Document   : form
    Created on : Oct 31, 2017, 10:02:03 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Edit</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous"> 
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="container" role="main">
            <div class="t">
                <p>
                    <span>
                        <form method="POST" action="save.jsp">
                    
                  
                    <div class="form-group">
                        <label for="Course">Course Name:</label>
                        <input type="text" class="form-control" name="cName" placeholder="Enter the name of the course.">
                    </div>
                    <div class="form-group">
                        <label for="Duration">Duration:</label>
                        <input type="text" class="form-control" name="cDuration" placeholder="Enter the duration of course in months.">
                    </div>
                    <div class="form-group">
                        <label for="Instructor">Instructor Name:</label>
                        <input type="text" class="form-control" name="cInstructor" placeholder="Enter the instructor for the course.">
                    </div>
                    <a href="index.jsp" class="btn btn-danger">Back</a>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
                   </span>
                </p>
                
                
            </div>
        </div>
    </body>
</html>
