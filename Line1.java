import java.util.*;

public class Main {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int money = 20000;
		String distance = scan.nextLine();
		String[] b = distance.split(" ");

		for(int i =0; i<b.length; i++) {
			if (Integer.parseInt(b[i]) >= 4 || Integer.parseInt(b[i]) <= 178){
				if (Integer.parseInt(b[i]) <= 40) {
					if (money < 720) {
						break;
					} else {
						money -= 720;
					}
				} else {
					int value = Integer.parseInt(b[i]) - 40;
					int total = 720 + ((value / 8) * 80);

					if (value % 8 != 0) {
						int v = 720 +((value / 8) + 1) * 80;
						money -= v;
					}else {
						if (money < total) {
							break;
						}else {
							money -= total;
						}
					}

				}
			}else {
				break;
			}
		}
		System.out.println(money);
	}
}
