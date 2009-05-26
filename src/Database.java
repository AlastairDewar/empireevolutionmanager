import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Database {

	private String hostname;
	private String username;
	private String password;
	private String name;
	private Connection connection = null;
	Statement stmt = null;
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
		    stmt = this.connection.createStatement();
		    boolean buildings_exist = stmt.execute("SELECT * FROM Buildings");
		    while(buildings_exist) {
		        rs = stmt.getResultSet();
		        Building current_building = new Building();
		        current_building.set_description(rs.getString("description"));
		        current_building.set_name(rs.getString("name"));
		        buildings.add(current_building);
		        buildings_exist = this.stmt.getMoreResults();
		    }
		}
		catch (SQLException ex){
		    // handle any errors
		    //System.out.println("SQLException: " + ex.getMessage());
		    //System.out.println("SQLState: " + ex.getSQLState());
		    //System.out.println("VendorError: " + ex.getErrorCode());
		}
		return buildings;
	}
	
	public int get_building_count() {
		return 0;
	}
}
