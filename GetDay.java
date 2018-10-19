package algorithms;

public class GetDay {
	public String getDayName(int a, int b) {
	      String answer = "";
	        String[] day = { "FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU" };
	        int[] date = { 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
	        int allDate = 0;
	        for (int i = 0; i < a - 1; i++) {
	            allDate += date[i];
	        }
	        allDate += (b - 1);
	        answer = day[allDate % 7];

	        return answer;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		GetDay test = new GetDay();
        int a=1, b=24;
        System.out.println(test.getDayName(a,b));
	}

}
