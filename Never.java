import java.util.*;

public class Never {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		long[] array = {1,2,3,4,5,6,7,8,9,10};
		long[] defaultArray = {1,2,3,4,5,6,7,8,9,10};
		long[] tempArray = new long[10];
		
		Scanner input = new Scanner(System.in);
		
		int b = input.nextInt();
		
		for (int z = 0 ; z < b ; z ++ ) {
			int a = input.nextInt();
			
			if (a == 1) {
				System.out.println(10);

			} else {
				a = a-1;
				for(int i = 0 ; i < a ; i ++ ){	
					for (int j = 1 ; j < 10 ; j ++ ) {
						if(j == 1){
							tempArray[j] = array[j] + 1; 
						} else {
							tempArray[j] = tempArray[j-1] + array[j];
							if(j == 9 && i == a -1) {
								System.out.println(tempArray[9]);
								break;
							}
							if(j == 9) {
								array = tempArray;
								tempArray = new long[10];
							}
							
						}
					}
				}
			}
			array = defaultArray;
		}
	}
}
