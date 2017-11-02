/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
package com.itn.jspjdbcexample.dao.Impl;

import com.itn.jspjdbcexample.entity.Course;
import com.itn.jspjdbcexample.utitls.DbConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dell
 */
public class CourseDaoImpl implements CourseDao{
    DbConnection dbconn = new DbConnection();
    
    @Override
    public List<Course> getAll() throws SQLException,ClassNotFoundException{
        List<Course> courselist = new ArrayList();
        dbconn.open();
        String query = "select * from course";
        dbconn.initStatement(query);
        ResultSet rs = dbconn.executeQuery();
        while(rs.next()){
            Course c = new Course();
            c.setId(rs.getInt(1));
            c.setName(rs.getString(2));
            c.setDuration(rs.getString(3));
            c.setInstructorName(rs.getString(4));
            courselist.add(c);
            
        }
        
        return courselist;
    }
    
    @Override
    public Course getById(int id)  throws SQLException,ClassNotFoundException {
        String getByIdQuery = "select * from course where course_id = ?";
        dbconn.open();
        PreparedStatement stmt = dbconn.initStatement(getByIdQuery);
        stmt.setInt(1, id );
        ResultSet checkParam = dbconn.executeQuery();
        Course c = new Course();
        while(checkParam.next()){
            
            
            c.setName(checkParam.getString(2));
            c.setDuration(checkParam.getString(3));
            c.setInstructorName(checkParam.getString(4));
            
            
            
        }
        return c;
        
        
    }
    
    @Override
    public int update(Course c) throws SQLException, ClassNotFoundException {
        String insertquery = "Update course set course_name = ?,course_duration= ?,instructor_name=? where course_id =?";
        dbconn.open();
        PreparedStatement stmt = dbconn.initStatement(insertquery);
        stmt.setString(1,c.getName());
        stmt.setString(2,c.getDuration());
        stmt.setString(3,c.getInstructorName());
        stmt.setInt(4, c.getId());
        int checkParam= dbconn.executeUpdate();
        dbconn.close();
        return checkParam;
    }
    
    @Override
    public int insert(Course c) throws SQLException, ClassNotFoundException {
        String insertquery = "Insert into course(course_name,course_duration,instructor_name) VALUES(?,?,?)";
        dbconn.open();
        PreparedStatement stmt =  dbconn.initStatement(insertquery);
        stmt.setString(1,c.getName());
        stmt.setString(2,c.getDuration());
        stmt.setString(3,c.getInstructorName());
        int checkParam = dbconn.executeUpdate();
        System.out.println("Cheking param"+ checkParam);
        dbconn.close();
        return checkParam;
        
        
        
    }
    
    @Override
    public int delete(int id) throws SQLException, ClassNotFoundException {
        String deleteQuery = "Delete from course where course_id =?" ;
        dbconn.open();
        PreparedStatement stmt = dbconn.initStatement(deleteQuery);
        stmt.setInt(1, id);
        int checkParam = dbconn.executeUpdate();
        System.out.println("Check param"+ checkParam);
        dbconn.close();
        return checkParam;
        
        
    }
    
    
    
}
