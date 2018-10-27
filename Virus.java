import java.util.*;

public class Virus {
	
	static int edge, line;
	static int A,B;
	static int[][] array;
	static boolean [] visit;
	static int count ;
	
	public static void main(String[] args) {
		
		Scanner input = new Scanner(System.in);
		
		edge = input.nextInt();
		line = input.nextInt();
		array = new int[edge][edge];
		visit = new boolean[edge];
		count = 0;
		
		input.nextLine();

		for ( int i = 0 ; i < line ; i ++ ){
			String pointtopoint = input.nextLine();
			String[] str = pointtopoint.split(" ");
			
			A = Integer.parseInt(str[0])-1;
			B = Integer.parseInt(str[1])-1;
		
			array[A][B] = 1;
			array[B][A] = 1;	
		}
		
		bfs(0);
		System.out.println(count);
	}
	
	static void bfs(int V) {
		
		Queue<Integer> queue = new LinkedList<Integer>();
		queue.offer(V);
		visit[V] = true;
		
		while(!queue.isEmpty()){
			int z = queue.poll();
			for (int i = 0 ; i < edge ; i ++ ){
				if (array[z][i] == 1 && visit[i] == false) {
					queue.offer(i);
					visit[i] = true;
					count ++ ;
				}
			}
		}
	}
}
