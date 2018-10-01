
import java.util.*;

public class RotateArray {

	public static void main(String[] args) {

		int array[][] = {{1,2,3,4,5},
						{6,7,8,9,10},
						{11,12,13,14,15},
						{16,17,18,19,20},
						{21,22,23,24,25}};
		
		int rotateArray[][] = new int[5][5];
				
		for ( int i = 0 ; i < array.length; i ++) {
			for (int j = 0 ; j < array.length; j++) {
				int n = array.length -1 - i;
				rotateArray[j][n] = array[i][j];
			}
		}

		for ( int i = 0 ; i < array.length; i ++) {
			for (int j = 0 ; j < array.length; j++) {
				System.out.print(rotateArray[i][j]+" ");
			}
			System.out.println("");
		}

	}

}
