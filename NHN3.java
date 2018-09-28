import java.util.*;

public class NHN3 {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		LinkedList<Character> a = new LinkedList<Character>();
		
		String str = scan.nextLine();
		str = str.replaceAll(" ", "");
		char[] b = str.toCharArray();
		int count = 0;
		
		for (int i = 0 ; i < b.length; i++){
				if(a.contains(b[i])){
					int c = a.indexOf(b[i]);
					a.remove(c);
					a.addFirst(b[i]);
				} else {
					if (a.size() >= 3) {
						a.addFirst(b[i]);
						System.out.println(a.getLast());
						a.removeLast();	
						count ++;
					}else{
						a.addFirst(b[i]);
					}
				}	
			}
		if (count == 0) {
			System.out.println(count);
		}
	}

}
