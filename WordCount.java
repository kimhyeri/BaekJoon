import java.util.*;

public class WordCount {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		String str = input.nextLine();
		char[] strChar = str.toCharArray();
		int count = 0;
		for(int i = 0 ; i < strChar.length; i ++) {
			if (strChar[i] == ' ' && i == strChar.length -1) {
				count--;
			}
			if (strChar[i] == ' '){
				if ( i == 0 ) {
				} else {
					count ++;
				}
			}	
		}
		System.out.println(count + 1);	
	}

}
