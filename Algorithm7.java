import java.util.Scanner;

public class Algorithm7 {

	static StringBuffer str = new StringBuffer();
	static String number ;
	static int value ;
	static int count ;
	static int init;
	static int cnt ;
	
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);		
		number = input.nextLine();	
		count = 0;
		cnt = 1;
		value = Integer.parseInt(number);
		init = value;
		getNumber();
		System.out.println(cnt /2);

	}
	
	static void getNumber() {
		if (value < 10) {
			str.append(0);
		} str.append(value);
		if (count == 0) {
			int first = Integer.parseInt(String.valueOf(str.charAt(0)));
			int second = Integer.parseInt(String.valueOf(str.charAt(1)));
			value = first + second;
			count += 1;
		} else {
			int first = Integer.parseInt(String.valueOf(str.charAt(count)));
			int second = Integer.parseInt(String.valueOf(str.charAt(cnt)));
			value = first + second;
			if (count != 0 && first * 10 + second == init) {
				return;
			}
			count += 2;
		}
		cnt += 2;
		getNumber();
	}
}
