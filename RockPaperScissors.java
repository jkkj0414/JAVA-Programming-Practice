import java.util.Scanner;
public class RockPaperScissors {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("���������� �����Դϴ�. ����, ����, �� �߿��� �Է��ϼ���");
		
		System.out.print("ö�� >> ");
		String var1 = sc.next();
		
		System.out.print("���� >> ");
		String var2 = sc.next();
		
		if(var1.equals("����"))
			if(var2.equals("����"))
				System.out.println("�����ϴ�.");
			else if(var2.equals("����"))
				System.out.println("���� �̰���ϴ�.");
			else
				System.out.println("ö���� �̰���ϴ�.");
		
		if(var1.equals("����"))
			if(var2.equals("����"))
				System.out.println("ö���� �̰���ϴ�.");
			else if(var2.equals("����"))
				System.out.println("�����ϴ�.");
			else
				System.out.println("���� �̰���ϴ�.");
		
		if(var1.equals("��"))
			if(var2.equals("����"))
				System.out.println("���� �̰���ϴ�.");
			else if(var2.equals("����"))
				System.out.println("ö���� �̰���ϴ�.");
			else
				System.out.println("�����ϴ�.");
		
		sc.close();
	}
}