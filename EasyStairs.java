import java.util.*;

public class EasyStairs {

	public static void main(String[] args) {
		
		Scanner input = new Scanner(System.in);
		
		int N = input.nextInt();
		
		long [] array = {1,1,1,1,1,1,1,1,1}; //이전 배열
		long [] arr = {1,1,1,1,1,1,1,1,1}; //현재 배열
		long [] temp = {1,1,1,1,1,1,1,1,1}; //이이전 배열
		final long mod = 1000000000;
		
		long total = 0;
		
		if( N == 1) {
			total = 9;	
		} else {
			for ( int i = 1 ; i < N ; i ++ ) {
				for( int j = 0; j < 9 ; j ++ ) {
					// 거꾸러 생각 함. 2,2,2,2,2,2,2,2,1 -> 1,2,2,2,2,2,2,2,2
					
					// 규칙 - 이전 배열의 맨 앞이 새롭게 생성된 배열의 맨 끝이 된다. 
					if( j == 0 ) {
						arr [j] = (array[array.length -1 -j]) % mod;
					} 
					// 규칙 - 이전 배열의 끝은 이전 배열 인덱스 - 1과 이이전 배열의 인덱스를 더한 값. 
					else if (j == 8) {
						// N이 2인경우는 이전만 있고 이이전이 없으니까 2로 설정.
						if( N == 2 ) {
							arr [j] = 2;
						} else {
							arr [j] = (temp[j] + array[j-1]) % mod;
						}
					} 
					// 규칙 - 배열의 중간 값들은 이전 배열의 인덱스 + 1 , 인덱스 - 1 을 더한 값.
					else {
						arr [j] = (array[j-1] + array[j+1]) % mod;
					}	
					//맨 끝은 모두 더함 total
					if(i == N - 1) {
						total += (arr[j]) % mod;
					}
				}
				
				//이전 배열 이이전 배열 변경해줌.
				temp = array.clone();
				array = arr.clone();
			
			}
		}
		
		System.out.print(total % mod);
		input.close();
	}
	
}
