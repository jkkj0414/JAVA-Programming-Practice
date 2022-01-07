import java.util.Scanner;
public class RockPaperScissors {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("가위바위보 게임입니다. 가위, 바위, 보 중에서 입력하세요");
		
		System.out.print("철수 >> ");
		String var1 = sc.next();
		
		System.out.print("영희 >> ");
		String var2 = sc.next();
		
		if(var1.equals("가위"))
			if(var2.equals("가위"))
				System.out.println("비겼습니다.");
			else if(var2.equals("바위"))
				System.out.println("영희가 이겼습니다.");
			else
				System.out.println("철수가 이겼습니다.");
		
		if(var1.equals("바위"))
			if(var2.equals("가위"))
				System.out.println("철수가 이겼습니다.");
			else if(var2.equals("바위"))
				System.out.println("비겼습니다.");
			else
				System.out.println("영희가 이겼습니다.");
		
		if(var1.equals("보"))
			if(var2.equals("가위"))
				System.out.println("영희가 이겼습니다.");
			else if(var2.equals("바위"))
				System.out.println("철수가 이겼습니다.");
			else
				System.out.println("비겼습니다.");
		
		sc.close();
	}
}