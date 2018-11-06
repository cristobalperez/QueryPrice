
package Conexión;

import java.sql.Connection;
import java.sql.DriverManager;


public class Conexion {
    private Connection conn;
        public Conexion(){
    
        try {
            Class.forName("com.mysql.jdbc.Driver");
            this.conn= DriverManager.getConnection("jdbc:mysql://localhost:3306;/queryprice","root",null);
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    
    }
    
    public Connection getConnection(){
    return this.conn;
    }
}

