
package com.tech.blog.helper;
import java.sql.*;
public class ConnectionProvider {
    private static Connection con;
    public static Connection getConnection()
    {
        try {
            
            if(con==null){
                Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://roundhouse.proxy.rlwy.net:36806/railway","root","4fdc5dhhHhCH5CCDh4D32gDAGbGBGAGd");
            
            }   
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
