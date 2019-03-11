import java.util.Scanner;

public class Algorithm6 {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int count = input.nextInt();
		
		for (int i = 0; i<count; i++) {
			int student = input.nextInt();
			String grade = input.nextLine();
			
			int [] arr = new int[student];
			String[] gradeArr = grade.split("\\s");
			
			double sum = 0;
			
			for (int j = 1 ; j< gradeArr.length; j++) {
				arr[j-1] = Integer.parseInt(gradeArr[j]);
				sum += Integer.parseInt(gradeArr[j]);
			}
			
			double avg = sum / student;

			int cnt = 0;
			
			for (int j = 0 ; j< arr.length; j++) {
				if (avg < arr[j]) {
					cnt ++;
				}
			}

			double a = (double)(cnt) / (double)(student);
			
			System.out.format("%.3f%%%n", a * 100.0);
		}
	}

}
