import java.util.*;

public class Cycle {

	static int count ; 
	static boolean [] visited ;
	static int [] array;
	
	public static void main(String[] args) {
		
		Scanner input = new Scanner(System.in);
		
		int a = input.nextInt();
		
		for( int i = 0 ; i< a ; i ++) {
			count = input.nextInt();
			input.nextLine();
			String str = input.nextLine();
			String[] st = str.split(" ");
			array = new int[count];
			visited = new boolean[count] ;
			
			for (int j = 0 ; j < count ; j ++) {
				array[j] = Integer.parseInt(st[j]) -1;
			}	
			
			int cycle = 0 ;
			
			for( int z = 0 ; z < count ; z ++) {
				if( visited[z] == true) {continue;}
				if (z == array[z]) {
					visited [z] = true;
					cycle ++;
				} else {
					visited[z] = true;
					int first = z;
					int temp = array[z]; 
					while(true) {	
						visited[temp] = true;
						if (first == array[temp] && visited[temp] == true) {	
							cycle ++;
							break;
						}
						temp = array[temp];
					}
				}				
			}
			System.out.println(cycle);
		}
		input.close();
	}
}
