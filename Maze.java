import java.util.*;

public class Maze {

	static boolean [][] visited;
	static int a,b;
	static int[] dx = {0,0,-1,1};
	static int[] dy = {1,-1,0,0};
	
	static int [][] array;
	
	public static void main(String[] args) {
		
		Scanner input = new Scanner(System.in);
		
		a = input.nextInt();
		b = input.nextInt();		
		array = new int[a][b];
		visited = new boolean[a][b];
		
		input.nextLine();

		for ( int i = 0; i < a; i ++) {
			String str = input.nextLine();
			char[] c = str.toCharArray();
			for( int j = 0 ; j < b; j ++) {
				array[i][j] = c[j] - '0';	
			}
		}
	
		bfs(0,0);
					
	}
	
	static void bfs(int x , int y) {
		
		Queue<PointXY> queue = new LinkedList<PointXY>();
		queue.offer(new PointXY(x,y));
		visited[x][y] = true;
		
		while(!queue.isEmpty()){
			PointXY my = queue.poll();
			
			for (int i = 0 ; i < 4 ; i ++ ){
				int myX = my.x + dx[i];
				int myY = my.y + dy[i];
				
				if (myX >= 0 && myY >= 0 && myX < a && myY < b ){
					
					if (array[myX][myY] == 1 && visited[myX][myY] == false ){
						queue.add(new PointXY(myX, myY));
						visited[myX][myY] = true;
						array[myX][myY] = array[my.x][my.y] + 1;	
					}
				}
			}
		}
		System.out.println(array[a-1][b-1]);
	}	
}

class PointXY {
	int x;
	int y;
	
	PointXY( int x,  int y ) {
		this.x = x;
		this.y = y;
	}
}
