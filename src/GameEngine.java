
public class GameEngine {

	private GameEngineGUI gui = null;
	
	public GameEngine(boolean display) {
		if(display == true){
		gui = new GameEngineGUI(this);}
		else{
		gui = null;}
	}
	
	public static void main(String[] args) {
		if(args[0].equalsIgnoreCase("gui")){
		new GameEngine(true);}
		else if(args[0].equals(null)){new GameEngine(false);}
	}

}
