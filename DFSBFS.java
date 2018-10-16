import java.util.*;

public class DFSBFS {

	static int N,M,V;
	static int[][] array;
	static boolean[] visited;
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner input = new Scanner(System.in);
		
		array = new int[1001][1001];

		String st = input.nextLine();
		String[] str = st.split(" ");
		N = Integer.parseInt(str[0]); //정점의 개수
		M = Integer.parseInt(str[1]); //간선의 개수
		V = Integer.parseInt(str[2]); //시작할 위치
		visited = new boolean[1001];
		
		for(int i = 0 ; i < M ; i++ ){
			
			int a = Integer.parseInt(input.next());
			int b = input.nextInt();

			array[a][b] = 1; //양방향
			array[b][a] = 1;
			
		}		
		
		dfs(V);
		
		for ( int i = 1 ; i <= N ; i ++ ){
			visited[i] = false;
		}
		
		System.out.println();

		bfs(V);		
		
	}
	
	static void dfs(int V) {
		
		visited[V] = true;
		System.out.print(V+ " ");
		
		for(int i = 1; i <= N; i++){
			if(array[V][i] == 1 && visited[i] == false){
				dfs(i);
			}
		}
		
	}

	static void bfs(int V) {
		
		Queue<Integer> queue = new LinkedList<Integer>();
		queue.offer(V);
		visited[V] = true;
		System.out.print(V+ " ");
		
		while(!queue.isEmpty()){
			int z = queue.poll();
			for (int i = 0 ; i <= N ; i ++ ){
				if (array[z][i] == 1 && visited[i] == false) {
					queue.offer(i);
					visited[i] = true;
					System.out.print(i+ " ");
				}
			}
		}
		
	}
}
