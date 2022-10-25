import java.util.*;
public class Main {

    public static void main(String[] args) {
        Scanner val = new Scanner(System.in);
        int a, b, c;
        boolean c1, c2, c3;
        boolean istriangle = false;

        do{
            System.out.print("Please enter a value for a: ");
            a = val.nextInt();
            System.out.print("Please enter a value for b: ");
            b = val.nextInt();
            System.out.print("Please enter a value for c: ");
            c = val.nextInt();

            c1 = (a>=1) && (a <= 10);
            c2 = (a>=1) && (a <= 10);
            c3 = (a>=1) && (a <= 10);

            if (!c1){
                System.out.println("The value of a is not in range.");
            }
            if(!c2){
                System.out.println("The value of b is not in range.");
            }
            if(!c3){
                System.out.println("The value of c is not in range.");
            }
        }while (!(c1 && c2 && c3));

        if (a < b+c && b < a+c && c < a+b)
            istriangle = true;
            else
                istriangle = false;

        if (istriangle == true){
            if((a == b) && (b == c)){
                System.out.println("Equilateral triangle");}
            else if ((a != b) && (a != c) && (b != c)){
                System.out.println("Scalene Triangle");}
            else{
                System.out.println("isosceles triangle");}
        }
        else
            System.out.println("not a triangle");
    }
}
