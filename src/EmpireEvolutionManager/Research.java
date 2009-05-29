package EmpireEvolutionManager;

public class Research {
	
	private int unique_identifier;
	private String name;
	private String description;
	
	public Research(int newUID) {
		this.unique_identifier = newUID;
	}
	
	private int get_unique_identifier(){
		return this.unique_identifier;
	}
	
	public void set_description(String newDescription) {
		this.description = newDescription;
	}

	private String get_description(){
		return this.description;
	}
	
	public void set_name(String newName) {
		this.name = newName;
	}
	
	private String get_name(){
		return this.name;
	}
	
}
