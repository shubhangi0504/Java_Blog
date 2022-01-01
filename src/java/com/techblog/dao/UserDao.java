
package com.techblog.dao;

import com.techblog.entities.User;
import java.sql.*;
public class UserDao {
    private Connection con;
    public UserDao(Connection con) {
        this.con=con;
    }
    boolean b=false;
    public boolean saveUser(User user){
    
        try {
            String q="insert into user(user_name,Email,password,gender,about) value(?,?,?,?,?)";
        
            PreparedStatement pstmt=this.con.prepareStatement(q);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getAbout());
            pstmt.executeUpdate();
            b=true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return b;
    }
    
    public User getUserByEmailAndPassword(String email,String password){
        User user=null;
        
        try {
            String q="select * from user where Email=? and password=?";
            PreparedStatement pstmt=con.prepareStatement(q);
            pstmt.setString(1, email);
            pstmt.setString(2, password );
            ResultSet s=pstmt.executeQuery();
            if(s.next()){
                user=new User();
                user.setName(s.getString("user_name"));
                user.setEmail(s.getString("Email"));
                user.setGender(s.getString("gender"));
                user.setAbout(s.getString("about"));
                user.setDateAndTime(s.getTimestamp("rDate"));
                user.setProfile(s.getString("profile"));
                user.setPassword(s.getString("password"));
                user.setId(s.getInt("id"));
            }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
        
    return user;
    }
}
