
package Conexión;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


public class Conexion {
    public Connection conn;
    public Statement state;
        public Conexion(){
    
        try {
            Class.forName("com.mysql.jdbc.Driver");
            this.conn= DriverManager.getConnection("jdbc:mysql://localhost:3306;/queryprice","root",null);
            this.state= conn.createStatement();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    
    }
    
    public Connection getConnection(){
    return this.conn;
    }
}

