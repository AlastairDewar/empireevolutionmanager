package EmpireEvolutionManager;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class GameEngineGUI implements ActionListener {

	private GameEngine engine;
	
	private JFrame frame;
	private JLabel menu_name;
	private JPanel main_panel;
	
	private JButton menu_button_1, menu_button_2, menu_button_3, menu_button_4; 
	
	public GameEngineGUI(GameEngine newEngine) {
		engine = newEngine;
		System.out.println("Game Engine GUI initiated");
		makeFrame();
	}
	
    private void makeFrame(){
    	frame = new JFrame("Empire Evolution Game Engine Manager");
    	Container contentPane = frame.getContentPane();
        FlowLayout experimentLayout = new FlowLayout();
        contentPane.setLayout(experimentLayout);
    	main_panel = new JPanel(new GridLayout(9,1,0,5));
    	main_panel.add(new JLabel("Welcome to the Empire Evolution Engine Manager."));
    	main_panel.add(new JLabel("Please bare in mind updates are live before applying any changes."));
    	// etc
    	JPanel menu_panel = new JPanel(new GridLayout(9,1, 0, 5));
    	menu_name = new JLabel("Main Menu");
    	menu_panel.add(menu_name);
    	JButton menu_button_1 = new JButton("News");
    	menu_button_1.addActionListener(this);
    	menu_panel.add(menu_button_1);
    	JButton menu_button_2 = new JButton("Buildings");
    	menu_button_2.addActionListener(this);
    	menu_panel.add(menu_button_2);
    	JButton menu_button_3 = new JButton("Research Technologies");
    	menu_button_3.addActionListener(this);
    	menu_panel.add(menu_button_3);
    	JButton menu_button_4 = new JButton("Regiments");
    	menu_button_4.addActionListener(this);
    	menu_panel.add(menu_button_4);
    	JButton menu_button_5 = new JButton("Members");
    	menu_button_5.addActionListener(this);
    	menu_panel.add(menu_button_5);
    	JButton menu_button_6 = new JButton("Private Messaging");
    	menu_button_6.addActionListener(this);
    	menu_panel.add(menu_button_6);
    	menu_panel.add(new JLabel(""));
    	JButton quit_button = new JButton("Quit");
    	quit_button.addActionListener(this);
    	menu_panel.add(quit_button);
    	contentPane.add(main_panel);
    	/* Space between panels */
    	contentPane.add(new JPanel());
    	contentPane.add(menu_panel);
    	frame.pack();
    	frame.setSize(new Dimension(650,350));
    	frame.setVisible(true);
    	Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
    	Dimension size = frame.getSize();
    	screenSize.height = screenSize.height/2;
    	screenSize.width = screenSize.width/2;
    	int y = (int) (screenSize.height - size.getHeight()/2);
    	int x = (int) (screenSize.width - size.getWidth()/2);
    	frame.setLocation(x, y);
    	frame.addWindowListener(new MyWindowListener());
   }

	public void actionPerformed(ActionEvent arg0) {
		if(arg0.getActionCommand().equalsIgnoreCase("Quit")){
			System.out.println("Terminating. Goodbye.");
			System.exit(0);}
		else if(arg0.getActionCommand().equalsIgnoreCase("News")){
			menu_name.setText("News Menu");
			main_panel.removeAll();
			main_panel.add(new JLabel("Welcome to the Empire Evolution manager News Editor."));
			}
		else if(arg0.getActionCommand().equalsIgnoreCase("Buildings")){
			menu_name.setText("Buildings Menu");
			main_panel.removeAll();
			main_panel.add(new JLabel("Welcome to the Empire Evolution manager Building's Editor."));}
		else if(arg0.getActionCommand().equalsIgnoreCase("Research Technologies")){
			menu_name.setText("Research Technolgies Menu");
			main_panel.removeAll();
			main_panel.add(new JLabel("Welcome to the Empire Evolution manager Research Technologies Editor."));}
		else if(arg0.getActionCommand().equalsIgnoreCase("Regiments")){
			menu_name.setText("Regiments Menu");
			main_panel.removeAll();
			main_panel.add(new JLabel("Welcome to the Empire Evolution manager Regiments Editor."));}
		else if(arg0.getActionCommand().equalsIgnoreCase("Members")){
			menu_name.setText("Members Menu");
			main_panel.removeAll();
			main_panel.add(new JLabel("Welcome to the Empire Evolution manager Members Editor."));}
		else if(arg0.getActionCommand().equalsIgnoreCase("Private Messaging")){
			menu_name.setText("Private Messaging Menu");
			main_panel.removeAll();
			main_panel.add(new JLabel("Welcome to the Empire Evolution manager Private Messaging Editor."));}
	}

}
class MyWindowListener implements WindowListener {

	  public void windowClosing(WindowEvent arg0) {
	    System.exit(0);
	  }

	@Override
	public void windowActivated(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void windowClosed(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void windowDeactivated(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void windowDeiconified(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void windowIconified(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void windowOpened(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}
}