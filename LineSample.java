import java.util.*;

public class LineSample {

	public static void main(String[] args) {

		Scanner scan = new Scanner(System.in);
		int n = scan.nextInt();
		int temp = 0;
		
		for (int i = 0; i < n; i++ ){
			int value = scan.nextInt();
			if (temp < value) {
				temp = value;
			}
		}
		
		System.out.println(temp);
	}

}
