
public class GameEngine {

	private GameEngineGUI gui = null;
	
	public GameEngine(boolean display) {
		System.out.println("Game Engine initiated");
		if(display == true){
		gui = new GameEngineGUI(this);}
		else{
		gui = null;}
	}
	
	public static void main(String[] args) {
		if(args.length > 0){
			if(args[0].equalsIgnoreCase("gui")){
			new GameEngine(true);}}
		else{new GameEngine(false);}
	}

}
