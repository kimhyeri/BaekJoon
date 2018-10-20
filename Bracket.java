import java.util.*;

public class Bracket {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner input = new Scanner(System.in);
		
		int T = input.nextInt();
		String str = "";
		
		Stack<Character> stack = new Stack<Character>();
		
		for ( int i = 0 ; i < T ; i ++ ) {
			str = input.next();
			char c[] = str.toCharArray();
			for (int j = 0 ; j < c.length ; j ++) {
				
				if (c[j] == '(') {
					stack.push(c[j]);
				} else {
					if (stack.isEmpty()) {
						System.out.println("NO");
						break;
					}
					stack.pop();
				}
				
				if (j == c.length -1) {
					if(stack.isEmpty() == false) {
						System.out.println("NO");
					} else if(stack.isEmpty() == true) {
						System.out.println("YES");
					}
					break;
				}
				
			}
			stack.clear();
		}
		
	}

}
