import java.util.*;

public class NHN11 {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);

		int C = input.nextInt(); //총 카드
		int P = input.nextInt(); //섞는횟수

		int [] array = new int[C];
		int [] newArr = new int[C];

		for ( int i = 0 ; i < C; i ++) {
			array[i] = i+1;
		}

		newArr = array.clone();

		for(int j = 0; j < P ; j ++){
			int N = input.nextInt();
			int [] remain = new int[N];
			int count = array.length;
			
			while (true) {
				int c = 0;				
				for (int i = 0; i < N ; i ++) { 
					remain[i] = newArr[i];
				}

				for ( int i = 0 ; i < count-N ; i++){
					if (i+N >= count-N) {
						newArr[i] = remain[remain.length - (count-N-i)];
					} else {
						newArr[i] = newArr[i+N];
						c +=1;		
					}	
				}
				count = count - (count - c);

				if (c <= (2*N)){
					break;
				}
			}
		}
		for (int i = 0 ; i < 5 ; i ++) {
			System.out.println(newArr[i]);
		}
	}
}
