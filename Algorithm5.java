import java.util.Scanner;

public class Algorithm5 {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int count = input.nextInt();
		input.nextLine();
		double[] newGrade = new double[count];
		String str = input.nextLine();
		String[] strArr = str.split(" ");
		int max = Integer.parseInt(strArr[0]);
		
		// find max value
		for (int i = 1; i < count; i ++) {
			if (Integer.parseInt(strArr[i]) > max) {
				max = Integer.parseInt(strArr[i]);
			}
		}
		
		// put new value
		for (int i = 0; i < count; i ++) {
			double a = (Double.parseDouble(strArr[i]) / max) * 100;
			newGrade[i] = a;
		}
		
		double sum = 0;
		
		for (int i = 0; i < count; i ++) {
			sum += newGrade[i];
		} 
		
		double answer = sum/count;
		System.out.println(answer);
	}

}