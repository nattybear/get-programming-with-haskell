import java.util.*;

public class Example {
  public static int mystery1(int val1, int val2) {
    int val3 = 3;
    return (int) Math.pow(val1 + val2 + val3, 2);
  }

  public static int mystery2(int val1, int val2) {
    int val3 = 3;
    System.out.print("Enter a number: ");
    try {
      Scanner in = new Scanner(System.in);
      val3 = in.nextInt();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return (int) Math.pow(val1 + val2 + val3, 2);
  }

  public static void main(String[] args) {
    System.out.println(mystery1(2, 3));
    System.out.println(mystery2(2, 3));
  }
}
