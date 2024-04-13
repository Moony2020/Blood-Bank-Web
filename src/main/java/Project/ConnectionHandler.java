package Project;
import java.sql.*;
public class ConnectionHandler {
	 public static Connection getConnection ( ) {
	        try {
	            Class.forName ("com.mysql.jdbc.Driver");
	            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbankwebapplication?characterEncoding=utf8", "root", "123126");
	        	//System.out.print("Connection established");
	            return connection;
	            
	        } catch ( Exception e ) {
	        	System.out.print(e);
	            return null;
	        }

	    }
}
