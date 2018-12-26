import java.util.*;

public class K {

	public static void main(String[] args) {
		int[] array = {1, 5, 2, 6, 3, 7, 4};
		int[][] command = {{2, 5, 3}, {4, 4, 1}, {1, 7, 3}};
		List<Integer> answer = new ArrayList<>();		

		for(int i= 0; i < command.length; i++) {
			int start = command[i][0];
			int end = command[i][1];
			int value = command[i][2];
			List<Integer> temp = new ArrayList<>();
	
			for (int j = start-1; j < end ; j ++) {
				temp.add(array[j]);
			}
			
			Collections.sort(temp);
			answer.add(temp.get(value-1));
		}
		System.out.println(answer.toString());
	}
}
