import java.util.*;

public class EasyStairs {

	public static void main(String[] args) {
		
		Scanner input = new Scanner(System.in);
		
		int N = input.nextInt();
		
		long [] array = {1,1,1,1,1,1,1,1,1};
		long [] arr = {1,1,1,1,1,1,1,1,1};
		long [] temp = {1,1,1,1,1,1,1,1,1};
		
		long total = 0;
		if( N == 1) {
			total = 9;
			long result = total % 1000000000;
			System.out.print(result);
			input.close();
			return ;
		}
		
		for ( int i = 1 ; i < N ; i ++ ) {
			for( int j = 0; j < 9 ; j ++ ) {
				if( j == 0 ) {
					arr [j] = (array[array.length -1 -j])% 1000000000;
				} else if (j == 8) {
					if( N == 2 ) {
						arr [j] = 2;
					} else {
						arr [j] = (temp[j] + array[j-1])% 1000000000;
					}
				} else {
					arr [j] = (array[j-1] + array[j+1])% 1000000000;
				}
				
				if(i == N - 1) {
					total += (arr[j])% 1000000000;
				}
			}

			temp = array.clone();
			array = arr.clone();
			
		}
	
		long result = total % 1000000000;
		
		System.out.print(result);
		input.close();
	}

}
