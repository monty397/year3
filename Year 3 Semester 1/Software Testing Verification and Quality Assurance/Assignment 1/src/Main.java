import static java.lang.Math.pow;
import java.util.Scanner;
public class Main
{
    static Scanner console = new Scanner(System.in);
    public static void main(String[] args) {
        int a;
        int b;
        int c;

        System.out.printf("For the quadratic formula equation ax^2 + bx + c = 0\nType an integer value for a: ");
        a=console.nextInt();
        System.out.printf("Type an integer value for b: ");
        b=console.nextInt();
        System.out.printf("Type an integer value for c: ");
        c=console.nextInt();
        Quadratic test = new Quadratic (a,b,c);
        System.out.println("\n");
        System.out.println("\nThe equation is "+test.geta()+"x^2 + "+test.getb()+"x + "+test.getc()+" = 0");

        if (pow(b,2)>=4*a*c)
        {
            if (test.formulaX1()==test.formulaX2())
                System.out.println("The quadratic is a perfect square and the value of x= "+test.formulaX1());
            else
            {
                System.out.println("x1= "+test.formulaX1());
                System.out.println("x2= "+test.formulaX2());
            }

        }
        else
            System.out.println("Error "+test.formulaX1()+". There are no real roots.");
        System.out.println(test);
        System.out.println("\nAre there anymore equations? (Y/N)");
        char answer=console.next().charAt(0);
        while(answer=='Y' || answer=='y')
        {
            System.out.println("\nFor the quadratic formula equation ax^2 + bx + c = 0");
            System.out.printf("Enter a value of a: ");
            a=console.nextInt();
            test.seta(a);
            System.out.printf("Enter a value of b: ");
            b=console.nextInt();
            test.setb(b);
            System.out.printf("Enter a value of c: ");
            c=console.nextInt();
            test.setc(c);
            System.out.println("\nThe equation is "+test.geta()+"x^2 + "+test.getb()+"x + "+test.getc()+" = 0");

            if (pow(b,2)>=4*a*c)
            {
                if (test.formulaX1()==test.formulaX2())
                    System.out.println("The quadratic is a perfect square and the value of x= "+test.formulaX1());
                else
                {
                    System.out.println("x1= "+test.formulaX1());
                    System.out.println("x2= "+test.formulaX2());
                }
            }
            else
                System.out.println("Error "+test.formulaX1()+". There are no real roots.");
            System.out.println(test);
            System.out.println("\nAre there anymore equations (Y/N)");
            answer=console.next().charAt(0);
        }
    }
}