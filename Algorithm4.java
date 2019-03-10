import java.util.Scanner;

public class Algorithm4 {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int count = input.nextInt();
		input.nextLine();
		long sum = 0;
		long number = input.nextLong();
		for(int i = count ; i >= 0 ; i --) {
			long pow = (long) Math.pow(10, i);
			long front = number / pow;
			sum += number / pow;
			number -= front * pow;
			System.out.println(front * pow);
		} 
		System.out.println(sum);
		input.close();
	}

}
