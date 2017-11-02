/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.jspjdbcexample.entity;

/**
 *
 * @author Dell
 */
public class Course {
    
    private int id;
    private String name;
    private String duration;
    private String instructorName;

    public Course() {
    }

    public Course(int id, String name, String duration, String instructorName) {
        this.id = id;
        this.name = name;
        this.duration = duration;
        this.instructorName = instructorName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getInstructorName() {
        return instructorName;
    }

    public void setInstructorName(String instructorName) {
        this.instructorName = instructorName;
    }
    
}
    
    

