package EmpireEvolutionManager;
import java.util.ArrayList;

public class GameEngine {

	private GameEngineGUI gui = null;
	public Database database = null;
	private ArrayList<Building> buildings;
	private ArrayList<Research> research_technolgies;
	private ArrayList<Regiment> regiments;
	
	public GameEngine(boolean display) {
		System.out.println("Game Engine initiated");
		if(display == true){
		gui = new GameEngineGUI(this);}
		else{
		gui = null;}
		database = new Database("localhost", "testing", "testing", "EmpireEvolution");
		if(database.valid_connection()){
			System.out.println("Starting loading procedure ..");
			load_buildings();
			load_research_technolgies();
			load_regiments();}
		else{
			System.out.println("Database connection has gone down.");
			kill();}
	}
	
	public static void main(String[] args) {
		/*if(args.length > 0){
			if(args[0].equalsIgnoreCase("gui")){
			new GameEngine(true);}}
		else{new GameEngine(false);}*/
		new GameEngine(true);
	}
	
	private void load_buildings() {
		buildings = database.fetch_buildings(0);
		System.out.println("Loaded "+buildings.size()+" buildings ..");
	}
	
	private void load_research_technolgies() {
		research_technolgies = database.fetch_research_technologies(0);
		System.out.println("Loaded "+research_technolgies.size()+" research technolgies ..");
	}
	
	private void load_regiments() {
		regiments = database.fetch_regiments(0);
		System.out.println("Loaded "+regiments.size()+" regiments ..");
	}
	
	public void kill() {
		System.out.println("Terminating. Goodbye.");
		System.exit(0);
	}

}
