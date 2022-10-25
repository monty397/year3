import java.util.*;
public class commission {
    public static void main (String[]args){
        Scanner a  = new Scanner(System.in);
        int locks, stocks, barrels, tlocks, tstocks, tbarrels, temp;
        double lprice, sprice, bprice, sales, comm;
        boolean c1,c2,c3;
        lprice=45;
        sprice=30;
        bprice=25;
        tlocks=0;
        tstocks=0;
        tbarrels=0;

        System.out.print("Please Enter the number of locks: ");
        locks = a.nextInt();
        while (locks != -1){
            c1 = (locks<=0||locks>70);
            System.out.print("Please enter the number of stocks: ");
            stocks = a.nextInt();
            System.out.print("Please enter the number of barrels: ");
            barrels = a.nextInt();
            c2= (stocks<=0||stocks>80);
            c3= (barrels<=0||barrels>90);

            //Locks:
            if (c1){
                System.out.println("The value of locks is not in the range of 1 and 70.");
            }
            else{
                temp = tlocks + locks;
                if(temp > 70){
                    System.out.print("The new locks " + temp + " is not in range of 1 and 70");
                }
                else
                    tlocks = temp;
            }
            System.out.println("The total of the locks are: " + tlocks);

            //Stocks:
            if (c2){
                System.out.println("The value of stocks is not in the range of 1 and 80.");
            }
            else{
                temp = tstocks + stocks;
                if(temp > 80){
                    System.out.print("The new stocks " + temp + " is not in range of 1 and 80");
                }
                else
                    tstocks = temp;
            }
            System.out.println("The total of the stocks are: " + tstocks);

            //Barrels:
            if (c3){
                System.out.println("The value of barrels is not in the range of 1 and 90.");
            }
            else{
                temp = tbarrels + barrels;
                if(temp > 90){
                    System.out.print("The new barrels " + temp + " is not in range of 1 and 80");
                }
                else
                    tbarrels = temp;
            }
            System.out.println("The total of the stocks are: " + tbarrels);
            System.out.print("Please Enter the number of locks or exit loop by entering -1 for locks: ");
            locks = a.nextInt();
        }

        System.out.println("Number of locks: " + tlocks + " Number of stocks: " + tstocks + " Number of barrels: " + tbarrels);
        sales = lprice * tlocks + sprice * tstocks + bprice * tbarrels;
        System.out.println("Sales = " + sales);
        if(tlocks>0 && tstocks>0 && tbarrels>0)
        {
            if(sales > 1800.0)
            {
                comm=0.10*1000.0;
                comm=comm+0.15*800;
                comm=comm+0.20*(sales-1800.0);
            }
            else if(sales > 1000)
            {
                comm =0.10*1000;
                comm=comm+0.15*(sales-1000);
            }
            else
                comm=0.10*sales;
            System.out.println("The commission is: " + comm);
        }
        else
            System.out.println("Commission cannot be calculated.");
    }
}
