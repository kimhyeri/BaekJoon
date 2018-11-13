import java.util.*;

public class Alphabat {
	
	static int R,C,count;
	static int[] dx = {0,0,-1,1};
	static int[] dy = {1,-1,0,0};
	static char [][] array ;
	static StringBuilder temp;
	
	public static void main(String[] args) {

		Scanner input = new Scanner(System.in);
		
		R = input.nextInt();
		C = input.nextInt();
		count = 1;
		temp = new StringBuilder();
				
		input.nextLine();
		
		array = new char [R][C];
				
		for( int i = 0 ; i < R ; i ++) {
			String alpha = input.nextLine();
			char[] alphaStr = alpha.toCharArray();
			for( int j = 0 ; j < alphaStr.length ; j ++) {
				array[i][j] = alphaStr[j];
			}
		}
		temp.append(array[0][0]);
		check(0,0);

		System.out.println(count);
		input.close();
		
	}
	
	static void check(int x, int y) {
		Stack<pt> stack = new Stack<pt>();
		stack.add(new pt(x,y));

		if (!stack.isEmpty()) {
			stack.pop();
			
			for (int i = 0 ; i < 4 ; i ++ ){
				int myX = x + dx[i];
				int myY = y + dy[i];				
				if (myX >= 0 && myY >= 0 && myX < R && myY < C ){
					char check = array[myX][myY];
					if (!temp.toString().contains(String.valueOf(check))){
						stack.add(new pt(myX,myY));
						temp.append(check);
						check(myX, myY);
						count ++;
					}
				}
			}
		}
	}
}

class pt {
	int x,y;
	
	pt(int x, int y){
		this.x = x;
		this.y = y;
	}
}
