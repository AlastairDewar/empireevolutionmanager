package EmpireEvolutionManager;

import java.util.ArrayList;

public class PlayerBuilding extends Building {

	private int level;
	private double health;
	private int gold_generation_rate, stone_generation_rate, wood_generation_rate;
	private int gold_cost_rate, stone_cost_rate, wood_cost_rate;
	private ArrayList<Requirement> requirements;
	
	public PlayerBuilding(int newUID) {
		super(newUID);
		// TODO Auto-generated constructor stub
	}
	
	private int get_level(){
		return this.level;
	}
	
	public void set_level(int new_level){
		this.level = new_level;
	}
	
	private double get_health(){
		return this.health;
	}
	
	private void set_health(double new_health){
		this.health = new_health;
	}
	
	private int get_gold_generation_rate(){
		return this.gold_generation_rate;
	}
	
	private void set_gold_generation_rate(int new_generation_rate){
		this.gold_generation_rate = new_generation_rate;
	}
	
	private int get_stone_generation_rate(){
		return this.stone_generation_rate;
	}
	
	private void set_stone_generation_rate(int new_generation_rate){
		this.stone_generation_rate = new_generation_rate;
	}

	private int get_wood_generation_rate(){
		return this.wood_generation_rate;
	}
	
	private void set_wood_generation_rate(int new_generation_rate){
		this.wood_generation_rate = new_generation_rate;
	}
	
	private int get_gold_cost_rate(){
		return this.gold_cost_rate;
	}
	
	private void set_gold_cost_rate(int new_cost_rate){
		this.gold_cost_rate = new_cost_rate;
	}
	
	private int get_stone_cost_rate(){
		return this.stone_cost_rate;
	}
	
	private void set_stone_cost_rate(int new_cost_rate){
		this.stone_cost_rate = new_cost_rate;
	}

	private int get_wood_cost_rate(){
		return this.wood_cost_rate;
	}
	
	private void set_wood_cost_rate(int new_cost_rate){
		this.wood_cost_rate = new_cost_rate;
	}
	
	public void add_requirement(Requirement new_requirement) {
		requirements.add(new_requirement);
	}

}
