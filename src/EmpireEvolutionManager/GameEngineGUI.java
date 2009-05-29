package EmpireEvolutionManager;
import java.awt.*;
import java.awt.event.*;

import javax.swing.*;

public class GameEngineGUI {

	private GameEngine engine;
	
	private JFrame frame;
	
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
    	JPanel p1 = new JPanel(new GridLayout(8,1,0,5));
    	p1.add(new JLabel("Welcome to the Empire Evolution Engine Manager."));
    	p1.add(new JLabel("Please bare in mind updates are live before applying any changes."));
    	// etc
    	JPanel p2 = new JPanel(new GridLayout(8,1, 0, 5));
    	p2.add(new JLabel("              Main Menu"));
    	p2.add(new JButton("News"));
    	p2.add(new JButton("Buildings"));
    	p2.add(new JButton("Research Technologies"));
    	p2.add(new JButton("Resources"));
    	p2.add(new JButton("Members"));
    	p2.add(new JButton("Private Messaging"));
    	p2.add(new JButton("Quit"));
    	contentPane.add(p1);
    	/* Space between panels */
    	contentPane.add(new JPanel());
    	contentPane.add(p2);
    	frame.pack();
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