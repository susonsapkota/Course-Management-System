package com.itn.jspjdbcexample.dao.Impl;


import com.itn.jspjdbcexample.entity.Course;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Dell
 */
public interface CourseDao {
    
    List<Course>getAll()  throws SQLException,ClassNotFoundException;
    Course getById(int id) throws SQLException,ClassNotFoundException;
    int update(Course c) throws SQLException,ClassNotFoundException;
    int insert(Course c) throws SQLException,ClassNotFoundException;
    int delete (int id) throws SQLException,ClassNotFoundException;
    
    
    
}
