
public class Regiment {
	
	private int unique_identifier;
	private String name;
	
	public Regiment(int newUID) {
		this.unique_identifier = newUID;
	}
	
	private int get_unique_identifier(){
		return this.unique_identifier;
	}
	
	public void set_name(String newName) {
		this.name = newName;
	}
	
	private String get_name(){
		return this.name;
	}
	
}
