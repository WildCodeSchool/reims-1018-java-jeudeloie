package jeuDeLOie;

public class Dice {
	public static int roll(){
		   return randomWithRange(1, 6);
	}
	
	private static int randomWithRange(int min, int max){
		   int range = (max - min) + 1;     
		   return (int)(Math.random() * range) + min;
	}
}
