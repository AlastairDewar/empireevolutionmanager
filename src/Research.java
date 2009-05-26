
public class Research {
	
	private int unique_identifier;
	private String name;
	private String description;
	
	public Research(int newUID) {
		this.unique_identifier = newUID;
	}
	
	public void set_description(String newDescription) {
		this.description = newDescription;
	}

	public void set_name(String newName) {
		this.name = newName;
	}

}
