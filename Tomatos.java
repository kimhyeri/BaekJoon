import java.util.ArrayList;
import java.util.Scanner;

public class Tomatos {

	static int M,N;
	static int myX,myY;
	static int temp;
	
	static ArrayList<XYPoint> arr;

	static int[][] array;
	static boolean[][] visited;
	
	static int[] dx = {0,0,-1,1};
	static int[] dy = {1,-1,0,0};

	public static void main(String[] args) {

		Scanner input = new Scanner(System.in);

		M = input.nextInt(); // 열
		N = input.nextInt(); // 행 
		input.nextLine();

		visited = new boolean[N][M];
		array = new int[N][M];
		arr = new ArrayList<XYPoint>();

		for ( int i = 0 ; i < N ; i ++) {
			String str = input.nextLine();
			String [] strArr = str.split(" ");
			for (int j = 0 ; j < M ; j ++) {
				int temp = Integer.parseInt(strArr[j]);
				if (temp == 1 ) {
					arr.add(new XYPoint(i,j));
				}
				array[i][j] = temp ;
			}
		}

		for ( int i = 0 ; i < arr.size(); i ++) {
			bfs(arr.get(i));
		}

		for ( int i = 0 ; i < N ; i ++) {
			for (int j = 0 ; j < M ; j ++) {
				if(array[i][j] == 0) {
					temp = -1;
				}
			}
		}	
		System.out.println(temp);
	}

	static void bfs(XYPoint point) {
		visited[point.x][point.y] = true;
		XYPoint my = point;
		for (int i = 0 ; i < 4 ; i ++ ){
			myX = my.x + dx[i];
			myY = my.y + dy[i];

			if (myX >= 0 && myY >= 0 && myX < N && myY < M ){
				if (array[myX][myY] == 0 && visited[myX][myY] == false ){
					arr.add(new XYPoint(myX,myY));
					visited[myX][myY] = true;
					array[myX][myY] = array[my.x][my.y] + 1;
					temp = array[my.x][my.y];
				}
			}
		}
	}
}

class XYPoint {
	int x;
	int y;

	XYPoint( int x,  int y ) {
		this.x = x;
		this.y = y;
	}
}