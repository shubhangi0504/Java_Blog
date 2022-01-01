
package com.techblog.entities;

import java.sql.Timestamp;

public class User {
    private String name;
    private String email;
    private String password;
    private String gender;
    private String about;
    private Timestamp dateAndTime;
    private String profile;
    private int id;
   
    public User(String name,String email,String password,String gender,String about) {
        this.name=name;
        this.email=email;
        this.password=password;
        this.gender=gender;
        this.about=about;
    }
    
//    public User(String name,String email,String password,String gender,String about,Timestamp datetime) {
//        this.name=name;
//        this.email=email;
//        this.password=password;
//        this.gender=gender;
//        this.about=about;
//        this.dateAndTime=datetime;
//    }

    public User() {
        
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public Timestamp getDateAndTime() {
        return dateAndTime;
    }

    public void setDateAndTime(Timestamp dateAndTime) {
        this.dateAndTime = dateAndTime;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }
    
    
}
