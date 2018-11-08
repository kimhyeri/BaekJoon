import java.util.*;

public class Z {

	static int N,R,C,count;
	
	public static void main(String[] args) {

		Scanner input = new Scanner(System.in);
		
		String str = input.nextLine();
		str = str.replace(" ", "");
		char[] strArr = str.toCharArray();
		
		N = strArr[0] - '0';
		R = strArr[1] - '0';
		C = strArr[2] - '0';

		count = 0 ;
		
		Search((int) Math.pow(2,N),0,0);
		
		input.close();
		
	}
	
	public static void Search(int n ,int r, int c) {
		
		if (n == 2) {
			if (r == R && c == C) {
				System.out.println(count++);
				return;
			}
			count++;
			if (r == R && c+1 == C) {
				System.out.println(count++);
				return;
			}
			count++;
			if (r+1 == R && c == C) {
				System.out.println(count++);
				return;
			}
			count++;
			if (r+1 == R && c+1 == C) {
				System.out.println(count++);
				return;
			}
			count++;
			return;
		}
		Search(n/2, r, c);
		Search(n/2, r, c + n/2);
		Search(n/2, r + n/2, c);
		Search(n/2, r + n/2, c + n/2);
	}
}
