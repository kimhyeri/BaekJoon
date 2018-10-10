import java.util.*;

public class NHN02 {

	public static void main(String[] args) {

		Scanner input = new Scanner(System.in);
		int N = input.nextInt();
		int W = input.nextInt();
		int K = N;
		
		String [][] array = new String[N][N];
		String [][] rotate = new String[N][N];
		
		input.nextLine();

		//값 삽입
		for ( int i = 0 ; i < N ; i ++ ){
			String[] str = input.nextLine().split(" ");
			for ( int j = 0 ; j < N ; j ++){
				array[i][j] = str[j];
			}
		}
		
		for ( int i = 0 ; i < N ; i ++ ){
			for ( int j = 0 ; j < N ; j ++){
				System.out.print(rotate[i][j]+ " ");
			}
			System.out.println("");
		}
	}
}
