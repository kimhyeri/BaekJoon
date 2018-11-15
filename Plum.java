import java.util.*;

public class Plum {

	public static void main(String[] args) {

		Scanner input  = new Scanner(System.in);
		
		int T = input.nextInt();
		int W = input.nextInt();
		int [] array = new int [T];
		int [] sum = new int[T];
		int [] temp = new int[2];
		int tempW = W;
		int myPosition = 1;

		input.nextLine();
		
		for( int i = 0 ; i < T ; i ++ ){
			array[i] = input.nextInt();
		}
		
		for( int j = T ; j > 0 ; j -- ){
			for( int i = T - j  ; i < T ; i ++ ){
				if(array[i] == myPosition) {
					temp[array[i]-1] ++;
				} else if (tempW != 0 && array[i] != myPosition){
					temp[array[i]-1] ++;
					if (myPosition == 1){
						myPosition = 2 ;
					} else {
						myPosition = 1;
					}
					tempW --;
				}
			}
			tempW = W;
		
			sum[T-j] = temp[0] + temp[1];
			temp[0] = 0 ; temp[1] = 0;

		}			
		
		int total = 0;

		for( int i = 0 ; i < T ; i ++ ){
			if(sum[i]>total) {
				total = sum[i];
			}
		}
		
		System.out.println("total"+ total);
		input.close();
	}
	
}
