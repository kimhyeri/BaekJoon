import java.util.*;

public class Binary {

	public static void main(String[] args) {

		int array[] = {1,1,0,0,1,1,0,0};
		int tempArr[] = new int[array.length];
		int result = 0 ;
		int check = 1;
		
		if(array[0] != 0) {
			check = -1;
			int b = 1;
			for ( int i = array.length - 1; i >= 1; i--){
				tempArr[i] = array[i] - b;
				if( array[i] != 0 || b!= 1){
					b = 0;
				}
				tempArr[i] = Math.abs(tempArr[i]);
				array[i] = 1 - tempArr[i];
			}
		}
		for (int i = 1; i< array.length; i ++) {
			int t1 = (int)Math.pow(2, (7-(double)i));
			int t2 = array[i] * t1;
			result += t2;
		}
		result = result * check;
		System.out.println(result);
	}

}
