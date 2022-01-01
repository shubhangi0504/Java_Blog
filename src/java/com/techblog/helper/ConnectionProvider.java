
package com.techblog.helper;
import java.sql.*;
public class ConnectionProvider {
    private static Connection con;
    public static Connection getConnection(){
        
        if(con==null){
        
            try {
                
                //load driver
                Class.forName("com.mysql.cj.jdbc.Driver");
                //create connection
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","1234");
                
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return con;
    }
    
}
