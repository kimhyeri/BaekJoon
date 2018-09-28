import java.util.*;

public class NHN1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner (System.in);

		while(true){
			int n = sc.nextInt();
			if (n==0) {break;}
			String sent = sc.nextLine();
			sent = sc.nextLine();
			sent = sent.replaceAll(" ", "");
			sent = sent.toUpperCase();
			
			char st[] = sent.toCharArray();
			char newst[] = new char[st.length];
			
			int a = 0;
			int start = 0;
			
			for (int i=0; i<st.length; i++) {
				newst[a] = st[i];
	            a += n;   
	            if(a >= st.length) {
	                start++;   
	                a = (start % st.length); 
	            }
			}
			System.out.println(newst);	
		}	
	}
}
