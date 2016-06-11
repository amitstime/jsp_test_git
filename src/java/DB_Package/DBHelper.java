package DB_Package;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



import java.sql.*;

/**
 *
 * @author AM
 */
public class DBHelper {            
    
    private static Connection conn = null; 
    Statement stmt = null;
    
    public DBHelper() throws ClassNotFoundException, SQLException
    {
       if(conn == null){            
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydbweek10", "root", "");
        }
        stmt = conn.createStatement();      
    }   
    
    public int executeUpdate(String sql) throws SQLException
    {          
        return stmt.executeUpdate(sql);            
    }        
                
    public ResultSet executeQuery(String sql) throws SQLException
    {
        return stmt.executeQuery(sql);                
    }
    
    public void closeConnection() throws SQLException
    {
        conn.close();
    }
    
}


