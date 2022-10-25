import static java.lang.Math.pow;
public class Quadratic {

    private int a;
    private int b;
    private int c;
    public int geta(){
        return a;
    }
    public int getb(){
        return b;
    }
    public int getc(){
        return c;
    }
    public void seta(int a){
        this.a =a;
    }
    public void setb(int b){
        this.b =b;
    }
    public void setc(int c){
        this.c = c;
    }
    public Quadratic(int a, int b, int c)
    {
        this.a =a;
        this.b =b;
        this.c =c;
    }
    public Quadratic()
    {
        this.a =1;
        this.b =0;
        this.c =0;
    }

    public double formulaX1()
    {
        if (pow(b,2)>=4*a*c)
            return (-b+(pow((pow(b,2)-(4*a*c)),0.5)))/(2*a);
        else
        {
            return -999999;
        }
    }

    public double formulaX2()
    {
        if (pow(b,2)>=4*a*c)
            return (-b-(pow((pow(b,2)-(4*a*c)),0.5)))/(2*a);
        else
        {
            return -9999999;
        }
    }

    public String toString(){
        if (this.formulaX1()==this.formulaX2())
            return super.toString()+" a ="+a+" b ="+b+" c ="+c+" x ="+formulaX1();
        else if (pow(b,2)>=4*a*c)
            return super.toString()+" a ="+a+" b ="+b+" c ="+c+" x1 ="+formulaX1()+" x2 ="+formulaX2();
        else
            return super.toString()+" a ="+a+" b ="+b+" c ="+c+" There are no real roots for x1 and x2";
    }
}