import java.util.*;

public class Cabbage {

	static int [][] array;
	static int M,N,K;
	static int[] dx = {0,0,-1,1};
	static int[] dy = {1,-1,0,0};
	static int count;
	static boolean[][] visited;
	static ArrayList<Pointxy> arr;

	public static void main(String[] args) {

		Scanner input = new Scanner(System.in);
		int T  = input.nextInt(); //테스트 케이스 개수
		input.nextLine();
		
		for ( int i = 0 ; i < T ; i ++ ) {
			
			String str = input.nextLine();
			String[] strArr = str.split(" ");		
			M = Integer.parseInt(strArr[0]); // 가로
			N = Integer.parseInt(strArr[1]); // 세로
			K = Integer.parseInt(strArr[2]); // 배추의 위치
						
			array = new int[N][M];
			visited = new boolean[N][M];
			arr = new ArrayList<Pointxy>();

			for ( int j = 0 ; j < K ; j ++) {
				String str1 = input.nextLine();
				String[] strArr1 = str1.split(" ");
				
				int positionX = Integer.parseInt(strArr1[0]); 
				int positionY = Integer.parseInt(strArr1[1]); 
				
				arr.add(new Pointxy(positionY, positionX));
				array[positionY][positionX] = 1;

			}
	
			for( int j = 0 ; j < arr.size(); j ++) {
				bfs(arr.get(j));
			}
			
			System.out.println(count);

			count = 0;
		}	
		input.close();
	}
	
	static void bfs(Pointxy point) {
		Stack<Pointxy> stack = new Stack<Pointxy>();
		stack.add(point);
		count++;
		visited[point.x][point.y] = true;
		
		while(!stack.isEmpty()){
			Pointxy my = stack.pop();
			
			for (int i = 0 ; i < 4 ; i ++ ){
				int myX = my.x + dx[i];
				int myY = my.y + dy[i];				
				if (myX >= 0 && myY >= 0 && myX < N && myY < M ){
					if (array[myX][myY] == 1 && !visited[myX][myY] ){
						stack.add(new Pointxy(myX, myY));
						visited[myX][myY] = true;
						count --;
					}
				}
			}
		}
	}
}

class Pointxy {
	
	int x;
	int y;
	
	Pointxy(int x, int y) {
		this.x = x;
		this.y = y;
	}
	
}
