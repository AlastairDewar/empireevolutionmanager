import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Database {

	private String hostname;
	private String username;
	private String password;
	private String name;
	private Connection connection = null;
	ResultSet rs = null;
	
	public Database(String server_hostname, String server_username, String server_password, String database_name) {
		this.hostname = server_hostname;
		this.username = server_username;
		this.password = server_password;
		this.name = database_name;
		this.connect();
	}
	
	private void connect() {
		try {
            String url = "jdbc:mysql://"+this.hostname+"/"+this.name;
			try {
				Class.forName ("com.mysql.jdbc.Driver").newInstance();
			} catch (InstantiationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
            this.connection = DriverManager.getConnection (url, this.username, this.password);
		} catch (SQLException ex) {
		    System.out.println("SQLException: " + ex.getMessage());
		    System.out.println("SQLState: " + ex.getSQLState());
		    System.out.println("VendorError: " + ex.getErrorCode());
		}
	}
	
	public boolean valid_connection(){
		if(this.connection != null){return true;}else{return false;}
	}
	
	public ArrayList<Building> fetch_buildings() {
		ArrayList<Building> buildings = new ArrayList<Building>();
		try {
		    PreparedStatement stat = connection.prepareStatement(
		            "SELECT * FROM building",
		            ResultSet.TYPE_FORWARD_ONLY,
		            ResultSet.CONCUR_READ_ONLY);
		        stat.setFetchSize(Integer.MIN_VALUE);
		        ResultSet results = stat.executeQuery();
		   while (results.next()) {
		        Building current_building = new Building();
		        current_building.set_description(results.getString("description"));
		        current_building.set_name(results.getString("name"));
		        buildings.add(current_building);
		    }
		}
		catch (SQLException ex){
		    // handle any errors
		    System.out.println("SQLException: " + ex.getMessage());
		    System.out.println("SQLState: " + ex.getSQLState());
		    System.out.println("VendorError: " + ex.getErrorCode());
		}
		return buildings;
	}
}
