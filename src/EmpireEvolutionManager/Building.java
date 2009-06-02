package EmpireEvolutionManager;
import java.util.ArrayList;

public class Building {

	private int unique_identifier;
	private String name;
	private String description;
	
	public Building(int newUID) {
		this.unique_identifier = newUID;
	}
	
	public int get_unique_identifier(){
		return this.unique_identifier;
	}
	
	private String get_name(){
		return this.name;
	}
	
	public void set_name(String new_name){
		this.name = new_name;
	}
	
	private String get_description(){
		return this.description;
	}
	
	public void set_description(String new_description){
		this.description = new_description;
	}
	
}
