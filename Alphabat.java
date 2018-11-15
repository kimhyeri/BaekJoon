import java.util.*;

public class Alphabat {
	
	static int R,C,count,tempcount;
	static int[] dx = {0,0,-1,1};
	static int[] dy = {1,-1,0,0};
	static char [][] array ;
	static boolean [][] visited ;
	static StringBuilder temp;
	public static void main(String[] args) {

		Scanner input = new Scanner(System.in);
		
		R = input.nextInt();
		C = input.nextInt();
		count = 1;
		tempcount = 1;
		array = new char [R][C];
		visited= new boolean[R][C]; 
		temp = new StringBuilder();
				
		input.nextLine();
				
		for( int i = 0 ; i < R ; i ++) {
			String alpha = input.nextLine();
			char[] alphaStr = alpha.toCharArray();
			for( int j = 0 ; j < alphaStr.length ; j ++) {
				array[i][j] = alphaStr[j];
			}
		}

		temp.append(array[0][0]);
		System.out.println(check(0,0));
		input.close();
	}
	
	static int check(int x, int y) {
		count = 0;
		for (int i = 0 ; i < 4 ; i ++ ){
			int myX = x + dx[i];
			int myY = y + dy[i];				
			if (myX >= 0 && myY >= 0 && myX < R && myY < C ){
				char check = array[myX][myY];
				if (!temp.toString().contains(String.valueOf(check)) && !visited[myX][myY]){
					temp.append(check);
					visited[myX][myY] = true;
					count = Math.max(count, check(myX,myY));
					visited[myX][myY] = false;
				}
			}
		}
		temp.deleteCharAt(temp.length()-1);
		return count + 1;
	}
}
