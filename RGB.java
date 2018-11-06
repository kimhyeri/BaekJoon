import java.util.*;

public class RGB {

	public static void main(String[] args) {

		Scanner input = new Scanner(System.in);
		int N = input.nextInt();
		int [][] array = new int [N][N];
		int price = 0;
		
		input.nextLine();
		
		for ( int i = 0 ; i < N ; i++) {
			String str = input.nextLine();
			String[] strArr = str.split(" ");
			for ( int  j = 0 ; j < 3 ; j ++) {
				array[i][j] = Integer.parseInt(strArr[j]);	
			}
		}
	
		for ( int i = 1 ; i < N ; i++) {
			for ( int  j = 0 ; j < 3 ; j ++) {
				switch (j) {
				case 0:
					array[i][j] = Math.min(array[i-1][1], array[i-1][2]) + array[i][j];	
					break;
				case 1:
					array[i][j] = Math.min(array[i-1][0], array[i-1][2]) + array[i][j];	
					break;

				case 2:
					array[i][j] = Math.min(array[i-1][0], array[i-1][1]) + array[i][j];	
					break;

				}
				
				if( i == N-1 ) {
					if ( j == 0 ) {
						price = array[i][j];
					}
					
					if( price > array[i][j]) {
						price = array[i][j];
					} 
				}
			}
		}

		System.out.println(price);
		input.close();
	}
}
