import java.util.*;

public class Algorithm2 {

	public static void main(String[] args) {
		int n = 5;
		int[] arr1 = {9,20,28,18,11};
		int[] arr2 = {30,1,21,17,28};
		String[] answer = new String[n];
		
		for(int i = 0; i < n; i++) {
			int a = arr1[i] | arr2[i];
			String b = Integer.toBinaryString(a);
			char[] c = b.toCharArray();
			StringBuilder d = new StringBuilder();
			for (int j = 0 ; j < c.length; j++) {
				switch (c[j]){
				case '0':
					d.append(" ");
					break;
				case '1':
					d.append("#");
					break;
				}
			}
			answer[i] = d.toString();
		}	
		for(int i =0 ; i<n ; i ++) {
			System.out.println(answer[i]);
		}
	}
}
